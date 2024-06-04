-module(tycheck_simple_fail_38).
-compile([nowarn_export_all, export_all]).

-spec some_fun(string(), integer()) -> string().
some_fun(S, _) -> S.
-spec fun_ref_02_fail() -> integer().
fun_ref_02_fail() -> some_fun("foo", 42).
