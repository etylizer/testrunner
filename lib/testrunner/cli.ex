defmodule TestRunner.Cli do
  def main(_args \\ []) do
    args = System.argv()
    {test_suites, test_categories, options} = retrieve_cli_params(args)
    IO.puts("Using '#{options.timeout_executable}' as timeout executable.")

#    test_mode = Map.get(named_opts, :test, false)

    if options.disable_parallelism do
      IO.puts("Parallelism disabled. Execution time can increase significantly!")
    end

    test_data = TestRunner.TestCollector.collect_tests(test_suites, test_categories)

    executables = compute_executable_list()

    test_results = Enum.map(executables, fn executable = {exec_type, _} ->
      IO.inspect({:executable, exec_type})
      %{executable: exec_type, test_suites: TestRunner.Runner.run_tests(executable, test_data, options)}
    end)

    save_results(test_results)
  end

  @spec retrieve_cli_params([String.t()]) :: {[String.t()], [String.t()], TestRunner.TestConfig.t()}
  defp retrieve_cli_params(args) do
    {named_opts_raw, _other_opts, _errors} = OptionParser.parse(args,
      strict: [suites: :string, categories: :string, disable_parallelism: :boolean, timeout_executable: :string, test: :boolean, ety_dir: :string, debug: :boolean],
      aliases: [s: :suites, c: :categories, d: :disable_parallelism, t: :timeout_executable])
    named_opts = Map.new(named_opts_raw)

    test_suites = String.split(Map.get(named_opts, :suites, "ety-src,gradualizer-src"), ",")
    test_categories = String.split(Map.get(named_opts, :categories, ""), ",", trim: true)
    disable_parallelism = Map.get(named_opts, :disable_parallelism, false)
    timeout_executable = Map.get(named_opts, :timeout_executable, Path.absname("./timeout"))
    ety_dir = Map.get(named_opts, :ety_dir, Path.absname("."))
    debug_mode = Map.get(named_opts, :debug, false)

    {test_suites, test_categories, %TestRunner.TestConfig{timeout_executable: timeout_executable, disable_parallelism: disable_parallelism, ety_dir: ety_dir, debug_mode: debug_mode}}
  end

  @spec compute_executable_list() :: [{atom(), String.t()}]
  defp compute_executable_list() do
    [
      {:dialyzer, "dialyzer"},
      {:etylizer, "./ety"},
      {:gradualizer, "./gradualizer"},
      {:eqwalizer, "./elp"}
    ]
  end

  defp save_results(test_results) do
    json = Jason.encode!(test_results, pretty: true)
    File.write("test_results.json", json)
  end
end
