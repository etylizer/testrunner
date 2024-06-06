-module(custom_228).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec tc3_3_neg() -> {integer(), binary()}.
tc3_3_neg() -> timer:tc(erjangz, list_to_binary, []).
