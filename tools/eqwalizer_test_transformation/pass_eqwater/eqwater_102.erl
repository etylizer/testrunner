-module(eqwater_102).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ35(a | b) -> b.
occ35(A) when A /= b -> b;
occ35(B) -> B.
