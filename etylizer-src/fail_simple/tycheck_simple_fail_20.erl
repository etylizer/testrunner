-module(tycheck_simple_fail_20).
-compile([nowarn_export_all, export_all]).

-spec op_06_fail(integer()) -> boolean().
op_06_fail(X) -> X + "foo".
