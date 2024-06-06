-module(eqwater_89).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(A) :: {ok, A} | {err, atom()}.
-spec occ_and({result(number()),
               result(number())}) -> number().
occ_and({{Tag1, I1}, {Tag2, I2}})
    when (Tag1 == ok) and (Tag2 == ok) ->
    I1 + I2;
occ_and(_) -> 0.
