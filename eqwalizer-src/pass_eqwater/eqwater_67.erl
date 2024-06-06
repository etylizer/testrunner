-module(eqwater_67).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ20(a | b) -> b.
occ20(B) when B =/= a -> B;
occ20(_) -> b.
