-module(eqwater_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ01_cl(a | b) -> b.
occ01_cl(a) -> b;
occ01_cl(B) -> B.
