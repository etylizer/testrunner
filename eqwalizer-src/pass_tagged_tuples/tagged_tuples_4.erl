-module(tagged_tuples_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type r_result(Res, Err) :: {Res, ok} | {Err, err}.
-spec mk_r_result(boolean()) -> r_result(atom(),
                                         binary()).
mk_r_result(true) -> {result, ok};
mk_r_result(false) -> {<<>>, err}.
-spec test_r(boolean()) -> atom().
test_r(B) ->
    case mk_r_result(B) of
        {X, ok} -> X;
        {Z, err} -> erlang:binary_to_atom(Z)
    end.
