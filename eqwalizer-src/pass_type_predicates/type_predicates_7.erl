-module(type_predicates_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec any_binary(term()) -> binary().
any_binary(B) when is_binary(B) -> B;
any_binary(_) -> <<>>.
