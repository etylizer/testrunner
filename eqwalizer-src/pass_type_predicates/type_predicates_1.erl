-module(type_predicates_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec any_tuple(term()) -> tuple().
any_tuple(T) when is_tuple(T) -> T;
any_tuple(_) -> {}.
