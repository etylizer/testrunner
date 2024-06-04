-module(remotes1_10).

-compile([nowarn_export_all, export_all]).

-type local_and_known_remote_type_42() :: some_known_remote:type42() | ok | ko.

-spec foo10(local_and_known_remote_type_42()) -> ok.
foo10(ok) -> ok.