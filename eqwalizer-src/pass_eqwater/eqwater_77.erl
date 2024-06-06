-module(eqwater_77).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(one_field, {f1 :: integer()}).
-record(two_fields1,
        {f1 :: integer(), f2 :: integer()}).
-spec occ29(#one_field{} | #two_fields1{}) -> none().
occ29(X) -> case X of {} -> X end.
