-module(comprehensions_25).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test23([binary()]) -> binary().
test23(B) ->
    Res = << Y  || Y <- B >>,
    Res.
