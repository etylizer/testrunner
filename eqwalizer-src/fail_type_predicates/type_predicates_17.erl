-module(type_predicates_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: atom()}).
-record(rec2, {id :: atom()}).
-spec as_rec1a_neg(#rec1{} | #rec2{}) -> #rec1{}.
as_rec1a_neg(R) when is_record(R, rec2, 1) -> R.
