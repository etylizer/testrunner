-module(eqwater_90).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(A) :: {ok, A} | {err, atom()}.
-spec occ_andalso({result(number()),
                   result(number())}) -> number().
occ_andalso({{Tag1, I1}, {Tag2, I2}})
    when Tag1 == ok andalso Tag2 == ok ->
    I1 + I2;
occ_andalso(_) -> 0.
