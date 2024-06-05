defmodule TestRunner.TestConfig do
  defstruct enable_parallelism: false, timeout_executable: "timeout", ety_dir: ".", debug_mode: false

  @type t :: %TestRunner.TestConfig{enable_parallelism: boolean, timeout_executable: String.t, ety_dir: String.t, debug_mode: boolean}
end
