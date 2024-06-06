-module(comprehensions_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec gen_number(term()) -> number().
gen_number(N) when is_number(N) -> N;
gen_number(_) -> 0.
