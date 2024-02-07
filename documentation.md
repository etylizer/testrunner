# Elixir Testrunner

## Basic concept

- translate existing matrix shell script to elixir program
- optimize performance by running in parallel
- enrich output with additional information
- ideally, automate evaluation of exit codes

generally, create more useful outputs that contain more information than the shell script was able to provide

## Implementation

- initial attempt with porcelain + goon
- failed, porcelain leaks processes when they get stuck (issue with sending signals)
- second attempt with rambo
- rambo has a nice api but seems to share its timeout globally. Once an execution times out, all executions have a timeout
- third attempt with elixir's built-in `System.cmd/3` and relying on linux-native executable `timeout`
- parallel execution using Flow
  - no need for maximum performance, execution time depends on the type checker executables
  - significant performance improvement over sequential execution, 3:44 (with parallelization) vs 8:43 (without parallelization) (System: AMD Ryzen 9 5900X, 32GB RAM)
