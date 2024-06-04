-module(remotes1_2).
-compile([nowarn_export_all, export_all]).

-spec foo2(ok) -> some_unknown_remote:type42().
foo2(ok) -> ok.