-module(case_predicates_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec my_apply(term(), term()) -> ok | not_ok.
a(_) -> ok.
-spec aa(atom(), atom()) -> ok.
aa(_, _) -> ok.
-spec a(atom()) -> ok.
my_apply(X, Y) ->
    case {is_atom(X), is_atom(Y)} of
        {true, true} -> aa(X, Y);
        {true, _} -> a(X);
        {_, true} -> a(Y);
        _ -> not (-ok)
    end.
