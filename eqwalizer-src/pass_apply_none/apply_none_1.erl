-module(apply_none_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec mk_fun() -> fun((term()) -> term()).
mk_fun() ->
    Fun = erlang:error(not_implemented),
    Fun.
