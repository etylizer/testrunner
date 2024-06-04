-module(remotes1_13).

-compile([nowarn_export_all, export_all]).

-type local_and_unknown_remote_type_42() :: some_unknown_remote:type42() | ok | ko.

-spec foo13(ok) -> local_and_unknown_remote_type_42().
foo13(ok) -> ok.
