-module(queue_use_7).
-compile([nowarn_export_all, export_all]).

-record(db, {p, q}).

wrong7() ->
    add_unique(42, #db{p = [], q = queue:new()}).

add_unique(E, DB) ->
    case is_in_queue(E, DB) of
	true -> DB;
	false -> DB#db{q = queue:in(E, DB#db.q)}
    end.

is_in_queue(P, #db{q = {L1,L2}}) ->
    lists:member(P, L1) orelse lists:member(P, L2).