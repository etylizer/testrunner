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
- `--analyzer <analyzer>`: Allows to specify an individual analyzer to run. Only the specified type checker/analyzer 
  will be executed in the test run. Valid values are `dialyzer`, `eqwalizer`, `etylizer` and `gradualizer`. Other values
  including the empty string will result in all analyzers being executed.

The timeout executable is used to limit both memory usage and runtime of the tested analyzer executables.

### Evaluation of test results

By default, the test runner evaluates test results based on their exit code.
There are multiple exit codes that are mapped to a certain result type.
Result types `pass` and `fail` are swapped for tests that are meant to fail.

- 0: Pass, no errors detected
- 1: Fail, errors detected
- 5: NotImplemented, specific to ety
- 124: Timeout
- 137: CrashMemory, the defined memory limit was exceeded
- all other: Unknown, indicates some other problem that is not a type error, like syntax errors

For dialyzer, exit codes 1 and 2 are swapped, meaning that 1 is considered as unknown error and 2 is considered as type 
error and therefore `fail`. This is necessary because dialyzer uses exit code 1 to indicate general errors like syntax 
errors, file not found errors, etc.

## Test Result Processing

Test results can be processed into various plots and tables with the `report-generator` tool.
To use this tool, JDK 17 or newer (JDK 21 is recommended) is needed and has to be configured as default jdk.

All output files will be placed in a directory called `report-output` relative to the current working directory.

There are two ways of running the report generator.

### Building the generator ahead of time

To build the report generator, go to the `report-generator` directory and run the following command:

```bash
./gradlew :build
```

This will produce a jar file and a zip and a tar archive containing the report-generator binary.
To run the report generator from the jar, use the following command (assuming the current working directory is set to the repository root):

```bash
java -jar report-generator/build/libs/report-generator-all.jar path-to-the-result-json-file
```

Alternatively, unpack either the tar or zip archive found in `report-generator/build/distributions` after running a build.
After unpacking the archive, run the unpacked `bin/report-generator` file.
Always ensure to pass the path to the result json file from the testrunner as the first argument to the executable.

### Running the generator directly through Gradle

Instead of building the executable explicitly, you can also run the report generator directly through gradle:

```bash
./gradlew :run --args="path-to-the-result-json-file"
```
