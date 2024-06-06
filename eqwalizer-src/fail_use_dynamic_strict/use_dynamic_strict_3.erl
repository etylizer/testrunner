-module(use_dynamic_strict_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec use_cast(term()) -> {atom()}.
use_cast(A) ->
    Dyn = eqwalizer:dynamic_cast(A),
    {Dyn}.
