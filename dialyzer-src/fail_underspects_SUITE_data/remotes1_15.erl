-module(remotes1_15).

-compile([nowarn_export_all, export_all]).


-type local_and_ok_unknown_remote_type_42() :: some_unknown_remote:type42() | ok.
-spec foo15(ok) -> local_and_ok_unknown_remote_type_42().
foo15(ok) -> ok.