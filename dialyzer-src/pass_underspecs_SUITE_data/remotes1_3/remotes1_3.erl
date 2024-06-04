-module(remotes1_3).
-compile([nowarn_export_all, export_all]).

-spec foo3(some_known_remote:type42()) -> ok.
foo3(ok) -> ok.