-module(comprehensions_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1,
        {b :: undefined | binary(), s :: undefined | string()}).
-record(rec2,
        {b :: undefined | binary(), s :: undefined | string()}).
-spec gen_atom(term()) -> atom().
gen_atom(A) when is_atom(A) -> A;
gen_atom(_) -> not_atom.
-spec test15_neg(binary()) -> binary().
test15_neg(LB) ->
    << <<Y>>  || <<Y>> <= LB, (gen_atom(Y)) >>.
