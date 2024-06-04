-module(remotes1_4).
-compile([nowarn_export_all, export_all]).

-spec foo4(ok) -> some_known_remote:type42().
foo4(ok) -> ok.
