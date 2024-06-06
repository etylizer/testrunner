-module(type_predicates_23).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(f1, {f :: fun((term()) -> term())}).
-spec as_f1_neg(term()) -> #f1{}.
as_f1_neg(F) when is_function(F, 2) -> #f1{f = F}.
