-module(remotes1_16).

-compile([nowarn_export_all, export_all]).

-type local_and_ok_unknown_remote_type_42() :: some_unknown_remote:type42() | ok.

-spec foo16(local_and_ok_unknown_remote_type_42()) -> ok.
foo16(ok) -> ok.