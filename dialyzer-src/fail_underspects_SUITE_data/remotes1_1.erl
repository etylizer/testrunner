-module(remotes1_1).
-compile([nowarn_export_all, export_all]).

-spec foo1(some_unknown_remote:type42()) -> ok.
foo1(ok) -> ok.