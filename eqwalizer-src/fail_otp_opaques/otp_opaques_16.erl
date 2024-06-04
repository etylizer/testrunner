-module(otp_opaques_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ts(T, sets:set(a)) -> T.
ts(X, X) -> X.
-spec test4_neg(maps:iterator(k, v)) -> nok.
test4_neg(X) ->
    ts(X, X),
    nok.
