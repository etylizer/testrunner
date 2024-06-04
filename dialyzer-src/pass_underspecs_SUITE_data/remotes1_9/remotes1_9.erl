-module(remotes1_9).

-compile([nowarn_export_all, export_all]).

-type local_and_known_remote_type_42() :: some_known_remote:type42() | ok | ko.

-spec foo9(ok) -> local_and_known_remote_type_42().
foo9(ok) -> ok.