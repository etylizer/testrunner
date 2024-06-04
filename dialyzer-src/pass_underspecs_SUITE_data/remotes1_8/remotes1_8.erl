-module(remotes1_8).

-compile([nowarn_export_all, export_all]).

-type local_type_42() :: ok | ko.

-spec foo8(local_type_42()) -> ok.
foo8(ok) -> ok.
