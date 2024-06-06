-module(type_predicates_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec tuple_slice({term(), term()} |
                  number()) -> {term(), term()} | {}.
tuple_slice(T) when is_tuple(T) -> T;
tuple_slice(_) -> {}.
