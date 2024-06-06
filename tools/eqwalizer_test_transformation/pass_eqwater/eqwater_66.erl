-module(eqwater_66).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ19(a | b) -> b.
occ19(A) when A =:= a -> b;
occ19(B) -> B.
