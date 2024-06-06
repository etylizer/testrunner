-module(comprehensions_26).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test24([boolean()]) -> binary().
test24(B) ->
    Res = << (erlang:atom_to_binary(Y))  || Y <- B, Y >>,
    Res.
