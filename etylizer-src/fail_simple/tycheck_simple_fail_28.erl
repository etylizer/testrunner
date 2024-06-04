-module(tycheck_simple_fail_28).
-compile([nowarn_export_all, export_all]).

-spec catch_03_fail() -> float().
catch_03_fail() -> catch (1/10) + 1.
