-module(custom_315).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_remove1(#{a := integer()}) -> #{}.
maps_remove1(M) -> maps:remove(a, M).
