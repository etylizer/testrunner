defmodule TestRunner.Cli do
  def main(_args \\ []) do
    args = System.argv()
    {test_suites, test_categories, options, analyzer} = retrieve_cli_params(args)
    IO.puts("Using '#{options.timeout_executable}' as timeout executable.")

#    test_mode = Map.get(named_opts, :test, false)

    if options.enable_parallelism do
      IO.puts("Parallelism enabled. Memory consumption of running multiple tests at once can lead to unexpected crashes.")
    end

    test_data = TestRunner.TestCollector.collect_tests(test_suites, test_categories)

    executables = compute_executable_list(analyzer)

    test_results = Enum.map(executables, fn executable = {exec_type, _} ->
      IO.inspect({:executable, exec_type})
      %{executable: exec_type, test_suites: TestRunner.Runner.run_tests(executable, test_data, options)}
    end)

    save_results(test_results)
  end

  @spec retrieve_cli_params([String.t()]) :: {[String.t()], [String.t()], TestRunner.TestConfig.t()}
  defp retrieve_cli_params(args) do
    {named_opts_raw, _other_opts, _errors} = OptionParser.parse(args,
      strict: [suites: :string, categories: :string, enable_parallelism: :boolean, timeout_executable: :string, test: :boolean, ety_dir: :string, debug: :boolean, analyzer: :string],
      aliases: [s: :suites, c: :categories, d: :enable_parallelism, t: :timeout_executable])
    named_opts = Map.new(named_opts_raw)

    test_suites = String.split(Map.get(named_opts, :suites, "eqwalizer-src,dialyzer-src,etylizer-src,gradualizer-src"), ",")
    test_categories = String.split(Map.get(named_opts, :categories, ""), ",", trim: true)
    enable_parallelism = Map.get(named_opts, :enable_parallelism, false)
    timeout_executable = Map.get(named_opts, :timeout_executable, Path.absname("./timeout"))
    ety_dir = Map.get(named_opts, :ety_dir, Path.absname("."))
    debug_mode = Map.get(named_opts, :debug, false)
    analyzer = Map.get(named_opts, :analyzer, "")

    {test_suites, test_categories, %TestRunner.TestConfig{timeout_executable: timeout_executable, enable_parallelism: enable_parallelism, ety_dir: ety_dir, debug_mode: debug_mode}, analyzer}
  end

  @spec compute_executable_list(String.t()) :: [{atom(), String.t()}]
  defp compute_executable_list(analyzer) do
    case analyzer do
      "dialyzer" -> [{:dialyzer, "dialyzer"}]
      "etylizer" -> [{:etylizer, "./ety"}]
      "gradualizer" -> [{:gradualizer, "./gradualizer"}]
      "eqwalizer" -> [{:eqwalizer, "./elp"}]
      _ ->
        [
          {:dialyzer, "dialyzer"},
          {:etylizer, "./ety"},
          {:gradualizer, "./gradualizer"},
          {:eqwalizer, "./elp"}
        ]
     end
  end

  defp save_results(test_results) do
    json = Jason.encode!(test_results, pretty: true)
    File.write("test_results.json", json)
  end
end
