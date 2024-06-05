# TestRunner

An elixir application used to run various erlang type checkers on a set of tests.

## Roadmap

* [ ] Multi-module test cases
* [ ] Automated conversion of test suites to the test runner format
  * [X] eqWAlizer
  * [ ] Dialyzer
  * [ ] Gradualizer
  * [ ] etylizer

## Requirements

- Elixir 1.15.0 or higher
- perl        
- Dialyzer plt is already built
  - e.g. with `dialyzer --build_plt --apps erts kernel stdlib`

## Build and Run

To build the project and generate an executable, run:

```bash
mix escript.build
```

For development, use:

```bash
mix run -e TestRunner.Cli.main -- -s <test-suite-paths>
```

The test suite paths should be relative to the current working directory. Multiple test suites can be separated by a
comma.

For production, use:

```bash
MIX_ENV=prod mix escript.build
```

This will generate the executable `out/testrunner`.

Executing `out/testrunner` is equivalent to specifying the following test suites manually:

```bash
./out/testrunner -s eqwalizer-src,gradualizer-src,etylizer-src,dialyzer-src
```


## Usage

### Test file structure

All test files need to be structured in test suites and category following this schema:

```
test-suite-name
├── category-1
    ├── test-file-1.erl
    ├── test-file-2.erl
    └── ...
├── category-2
    ├── test-file-1.erl
    ├── test-file-2.erl
    └── ...
```

Category names need to start with the expected result. They can contain any suffix as long as it is separated from the
expected result with an underscore.
Valid expected results are:

- `pass`
- `fail`
- `both`
- `unknown`

Any other expected result will be mapped to `unknown`.

In order to run eqwalizer, an additional `project.json` file per test suite in the root working directory is needed.
The `project.json` file should be prefixed with the test suite name.
The structure of this file is described in
the [eqwalizer documentation](https://github.com/WhatsApp/eqwalizer/?tab=readme-ov-file#using-it-with-non-rebar-projects).
Check the examples inside this repository for proper inclusion of the `eqwalizer_support`
modules.

### Command line options

There are multiple command line options to customize the behaviour of the test runner:

- `--suites <test-suite-paths>` | `-s <test-suite-paths>`: The test suite paths should be relative to the current
  working directory. Multiple test suites can be separated by a comma.
- `--categories <categories>` | `-c <categories>`: The categories to run. Multiple categories can be separated by a
  comma. If no categories are specified, all categories will be run. **Needs at least one test suite to be specified**
- `--enable-parallellism` | `-d`: Enables parallellism. This will run all tests in parallel.
- `--timeout-executable <path>` | `-t <path>`: The path to the `timeout` executable. Defaults to a `timeout` executable
  in the current working directory.
- `--ety-dir <path>`: The path to the directory of an `ety` executable. Defaults to the current directory. **This option
  is required for some ety versions due to an issue in ety.**
- `--debug`: Enables debug logging. Will print all outputs from the analyzer executions to the command line.

The timeout executable is used to limit both memory usage and runtime of the tested analyzer executables.
