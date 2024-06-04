-module(remotes1_12).

-compile([nowarn_export_all, export_all]).

-type local_and_ok_known_remote_type_42() :: some_known_remote:type42() | ok.

-spec foo12(local_and_ok_known_remote_type_42()) -> ok.
foo12(ok) -> ok.