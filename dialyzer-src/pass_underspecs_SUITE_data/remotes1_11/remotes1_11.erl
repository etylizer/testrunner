-module(remotes1_11).

-compile([nowarn_export_all, export_all]).

-type local_and_ok_known_remote_type_42() :: some_known_remote:type42() | ok.
-spec foo11(ok) -> local_and_ok_known_remote_type_42().
foo11(ok) -> ok.