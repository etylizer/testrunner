-module(binaries_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test02_pos(binary()) -> {number(), binary()}.
test02_pos(<<X, Y/binary>>) -> {X, Y}.
