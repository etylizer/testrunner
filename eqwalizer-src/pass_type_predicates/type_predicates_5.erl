-module(type_predicates_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec list_slice([a] | tuple()) -> [a].
list_slice(L) when is_list(L) -> L;
list_slice(_) -> [].
