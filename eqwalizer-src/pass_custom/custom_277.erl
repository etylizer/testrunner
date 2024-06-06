-module(custom_277).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_with_1(Ks :: [atom()],
                  M :: #{atom() => number()}) -> #{atom() => number()}.
maps_with_1(Ks, M) -> maps:with(Ks, M).
