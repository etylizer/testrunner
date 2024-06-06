-module(funs_uncommon_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test15() -> ok.
test15() ->
    fun (X) -> X end,
    fun (X) -> X end,
    ok.
