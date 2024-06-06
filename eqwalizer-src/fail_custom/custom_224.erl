-module(custom_224).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec tc2_4_wip() -> {integer(), integer()}.
tc2_4_wip() -> timer:tc(fun erlang:'+'/2, [1, 2]).
