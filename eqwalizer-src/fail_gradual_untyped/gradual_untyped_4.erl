-module(gradual_untyped_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec reveal_any_tuple_2(tuple()) -> ok.
reveal_any_tuple_2({_A, B}) ->
    eqwalizer:reveal_type(B),
    B.
