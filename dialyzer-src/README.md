Test suite from commit `945c940f6bc6c0bcb026cdc6ae8f3ce358e859bb`

The test suite represents the ground truth for Dialyzer version v5.1.3.

Problem: What defaults to use?
We use default settings shipped with OTP 26.

Problem: Include tests that are executed with different defaults?
Yes, to compare against other tools.

If there are multiple test cases in one module, we split that file in multiple files.

Categories:

* Fail
* Pass

Structure:

* fail.*
    * name of SUITE
        * either a single test case file `*.erl` should fail
        * or a grouped test case with multiple files in a folder should fail
* pass.*
    * name of SUITE
        * either a single test case file `*.erl` should pass
        * or a grouped test case with multiple files in a folder should pass


DISCUSS:

* pass_discuss/unmatched_returns_SUITE_data/lc_warnings_1.erl: Idiomatic erlang code has unmatched returns (e.g. inside list comprehensions); fail, pass, or both?
* fail_discuss/underspects_SUITE_data/opaque.erl: 
    * set is opaque, match against tuples
    * case exhaustiveness?
* fail_discuss/user_SUITE_data/wpc_hlines.erl: 
    * should pass?


Not included:

* abstract_SUITE.erl: tests cannot be written in Erlang itself
* dialyzer_cl_SUITE.erl: utility functions for dialyzer
* dialyzer_utils_SUITE.erl: utility functions for dialyzer
* erl_types_SUITE.erl: internal type representation tests
* incremental_SUITE.erl: tests for incremental checking
* typer_SUITE.erl: test cases for typer
* dialyzer_SUITE.erl, cplt_SUITE.erl, iplt_SUITE.erl: test internal PLT structure
* incremental_SUITE_data
* Test cases where the license says that written permission is needed
* Test cases that test tool option flags
* Test cases with >1000 LOC; 
* Test cases with custom instructions or annotations (-dialyzer...)

Roadmap:

* [X] behaviour_SUITE_data
* [x] callgraph_SUITE_data
* [x] cplt_SUITE_data
* [x] default_ignore_overlapping_contract_SUITE_data
* [x] dialyzer_cl_SUITE_data
* [x] extra_return_SUITE_data
* [x] incremental_SUITE_data
* [x] indent2_SUITE_data
* [] indent_SUITE_data
* [] iplt_SUITE_data
* [] line_SUITE_data
* [] map_SUITE_data
* [] missing_return_SUITE_data
* [] nowarn_function_SUITE_data
* [] opaque_SUITE_data
* [] options1_SUITE_data
* [] options2_SUITE_data
* [] options3_SUITE_data
* [] overlapping_contract_SUITE_data
* [] overspecs_SUITE_data
* [] r9c_SUITE_data
* [] small_SUITE_data
* [] specdiffs_SUITE_data
* [x] underspecs_SUITE_data
* [x] unmatched_returns_SUITE_data
* [x] user_SUITE_data
