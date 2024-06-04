-module(remotes1_7).

-compile([nowarn_export_all, export_all]).

-type local_type_42() :: ok | ko.

-spec foo7(ok) -> local_type_42().
foo7(ok) -> ok.
