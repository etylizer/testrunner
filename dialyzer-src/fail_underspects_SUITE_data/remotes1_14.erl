-module(remotes1_14).

-compile([nowarn_export_all, export_all]).

-type local_and_unknown_remote_type_42() :: some_unknown_remote:type42() | ok | ko.

-spec foo14(local_and_unknown_remote_type_42()) -> ok.
foo14(ok) -> ok.