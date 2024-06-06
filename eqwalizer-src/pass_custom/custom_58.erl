-module(custom_58).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_fold_3_6(none()) -> #{number() => number()}.
maps_fold_3_6(None) -> maps:fold(None, #{}, #{1 => 1}).
