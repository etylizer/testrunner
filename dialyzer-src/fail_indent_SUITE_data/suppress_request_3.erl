-module(suppress_request_3).
-compile([nowarn_export_all, export_all]).

test3_b() -> % no local return (requested by default)
    A = fun(_) ->
                1
        end,
    A = 2. % can never succeed (requested by default)