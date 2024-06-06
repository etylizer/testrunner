-module(eqwater_138).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec any_tuple_neg(tuple()) -> ok.
any_tuple_neg(T) ->
    case T of _ when is_tuple(T) -> T end.
