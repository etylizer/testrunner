-module(dyn_calls_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec dyn_arity_neg() -> ok.
dyn_arity_neg() ->
    fun () -> res end(arg),
    ok.
