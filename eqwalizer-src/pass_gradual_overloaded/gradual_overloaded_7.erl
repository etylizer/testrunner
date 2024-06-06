-module(gradual_overloaded_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fst_gen({A}) -> A;
             ([A]) -> A.
fst_gen({A}) -> A;
fst_gen([A]) -> A.
-spec use_fst_gen2({atom()} | [atom()]) -> atom().
use_fst_gen2(X) -> fst_gen(X).
