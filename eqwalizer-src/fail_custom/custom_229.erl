-module(custom_229).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ets_lookup_1_neg(term()) -> [{whatev} | {2}].
ets_lookup_1_neg(Any) -> ets:lookup(tab, Any).
