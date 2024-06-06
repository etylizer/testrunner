-module(type_predicates_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec any_list(term()) -> list().
any_list(L) when is_list(L) -> L;
any_list(_) -> [].
