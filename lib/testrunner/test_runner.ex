defmodule TestRunner.Runner do

  @type test_result() :: :pass | :fail | :not_implemented | :timeout | :crash_memory | :unknown

  @type file_result() :: %{
                           file: String.t(),
                           result: test_result(),
                           raw_result: test_result(),
                           expected_result: test_result(),
                           time: integer()
                         }

  @type category_result() :: %{
                               category: String.t(),
                               actual_time: integer(),
                               total_time: integer(),
                               results: [file_result()]
                             }

  @type suite_result() :: %{test_suite: String.t(), categories: [category_result()]}

  @spec run_tests({atom(), String.t()}, [TestRunner.TestCollector.test_suite()], TestRunner.TestConfig.t()) :: [suite_result()]
  def run_tests(executable, tests, options) do
    Enum.map(tests, fn test_suite = %{suite: suite_name} ->
      %{test_suite: suite_name, categories: run_suite_tests(executable, test_suite, options)}
    end)
  end

  @spec run_suite_tests({atom(), String.t()}, TestRunner.TestCollector.test_suite(), TestRunner.TestConfig.t()) :: [category_result()]
  defp run_suite_tests(executable, %{suite: suite_name, test_categories: test_categories}, options) do
    IO.inspect({:suite, suite_name})

    Enum.map(test_categories, fn test_category ->
      run_category_tests(suite_name, executable, test_category, options)
    end)
  end

  @spec run_category_tests(term(), {atom(), String.t()}, TestRunner.TestCollector.test_category(), TestRunner.TestConfig.t()) :: category_result()
  defp run_category_tests(suite_name, executable, %{
         category: category_name,
         expected_result: expected_result,
         files: files
       }, options = %TestRunner.TestConfig{disable_parallelism: disable_parallelism}) do
    IO.inspect({:category, category_name})

    category_start_time = :os.system_time(:millisecond)
    results = case disable_parallelism do
      true ->
        Enum.map(files, fn test_file -> process_test_file(suite_name, test_file, executable, expected_result, options) end)
      false ->
        Flow.from_enumerable(files, min_demand: 1, max_demand: 2)
        |> Flow.map(fn test_file -> process_test_file(suite_name, test_file, executable, expected_result, options) end)
        |> Enum.to_list()
    end

    category_end_time = :os.system_time(:millisecond)
    total_time = Enum.reduce(results, 0, fn %{time: time}, sum -> sum + time end)
    actual_time = category_end_time - category_start_time
    %{category: category_name, results: results, actual_time: actual_time, total_time: total_time}
  end

  @spec process_test_file(term(), String.t(), {atom(), String.t()}, atom(), TestRunner.TestConfig.t()) :: file_result()
  defp process_test_file(suite_name, test_file, executable, expected_result, options) do
    %{raw_result: raw_result, result: test_result, time_diff: time_diff} = run_test(suite_name, executable, expected_result, test_file, options)
    IO.inspect({test_file, test_result})
    %{file: test_file, time: time_diff, result: test_result, raw_result: raw_result, expected_result: expected_result}
  end

  @spec run_test(term(), {atom(), String.t()}, atom(), String.t(), TestRunner.TestConfig.t()) :: %{raw_result: test_result(), result: test_result(), time_diff: integer()}
  defp run_test(suite_name, executable, expected_result, test_file, options) do
    start_time = :os.system_time(:millisecond)
    {output, exit_code} = construct_execution(suite_name, executable, test_file).(options.timeout_executable, options.ety_dir)
    if options.debug_mode do
      IO.puts(output)
    end
    end_time = :os.system_time(:millisecond)
    time_diff = end_time - start_time
    Map.put(evaluate_result(exit_code, output, expected_result, executable), :time_diff, time_diff)
  end

  @spec construct_execution(term(), {atom(), String.t()}, String.t()) :: (String.t, String.t -> {String.t(), non_neg_integer()})
  defp construct_execution(category_name, {type, path}, test_file) do
    args = case type do
      :dialyzer -> [path, "--src", test_file]
      :eqwalizer -> [path, "eqwalize", Path.basename(test_file, ".erl"), "--project", Path.basename(category_name) <> "-project.json"]
      :etylizer -> [path, Path.absname(test_file)]
      _ -> [path, test_file]
    end

    case type do
      :etylizer -> fn timeout_executable, ety_dir -> System.cmd(timeout_executable, ["-t", "10", "-s", "600000" | args], stderr_to_stdout: true, cd: ety_dir) end
      _ -> fn timeout_executable, _ety_dir -> System.cmd(timeout_executable, ["-t", "10", "-s", "600000" | args], stderr_to_stdout: true) end
    end
  end

  @spec evaluate_result(integer(), String.t(), atom(), {atom(), String.t()}) :: %{raw_result: test_result(), result: test_result()}
  defp evaluate_result(exit_code, console_output, expected_result, executable) do
    raw_result = evaluate_raw_result(exit_code, console_output, executable)

    result = case raw_result do
      :pass when expected_result == :pass -> :pass
      :pass when expected_result == :fail -> :fail
      :fail when expected_result == :pass -> :fail
      :fail when expected_result == :fail -> :pass
      :pass when expected_result == :both -> :pass
      :fail when expected_result == :both -> :pass
      _ -> raw_result
    end

    %{raw_result: raw_result, result: result}
  end

  @spec evaluate_raw_result(non_neg_integer(), String.t(), {atom(), String.t()}) :: test_result()
  defp evaluate_raw_result(exit_code, console_output, {executable_type, _}) do
    effective_exit_code = case executable_type do
      :dialyzer -> case exit_code do
                     1 -> 2
                     2 -> 1
                     _ -> exit_code
                   end
      :eqwalizer when exit_code == 0 -> process_output(console_output)
      _ -> exit_code
    end

    case effective_exit_code do
      0 -> :pass
      1 -> :fail
      2 -> :fail
      5 -> :not_implemented
      124 -> :timeout
      137 -> :crash_memory
      _ -> :unknown
    end
  end

  @spec process_output(String.t()) :: 0 | 1 | 2
  defp process_output(console_output) do
    case Regex.run(~r/((\d+)\s+ERRORS?)|(NO ERRORS)/, console_output) do
      nil -> 2
      [_, "", "", "NO ERRORS"] -> 0
      [_, _, _, ""] -> 1
      _ -> 2
    end
  end
end
