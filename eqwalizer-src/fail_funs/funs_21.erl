-module(funs_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-spec map_lam_bad_arity() -> [n()].
lmap(_F, _XS) -> [].
-spec lmap_n_to_n(fun((n()) -> n()), [n()]) -> [n()].
lmap_n_to_n(F, Xs) -> lmap(F, Xs).
-spec lmap(fun((A) -> B), [A]) -> [B].
map_lam_bad_arity() ->
    lmap_n_to_n(fun (X, _) -> X end, [3]).
