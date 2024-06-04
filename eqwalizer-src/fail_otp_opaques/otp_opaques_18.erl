-module(otp_opaques_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test6_wip(maps:iterator(k, v) |
                sets:set(a)) -> nok.
test6_wip(X) -> X().
