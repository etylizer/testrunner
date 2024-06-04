-module(funs_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type int_result() :: fun(() -> {ok, integer()} |
                                error).
-type getter(A) :: fun((atom()) -> A).
-type stream(A) :: eos | {head, A}.
-spec lam_arg_3_neg() -> [n()].
lmap(_F, _XS) -> [].
-spec lmap_n_to_n(fun((n()) -> n()), [n()]) -> [n()].
lmap_n_to_n(F, Xs) -> lmap(F, Xs).
-spec lmap(fun((A) -> B), [A]) -> [B].
lam_arg_3_neg() ->
    lmap_n_to_n(fun (X) -> erlang:atom_to_binary(X) end,
                [1, 2, 3]).
