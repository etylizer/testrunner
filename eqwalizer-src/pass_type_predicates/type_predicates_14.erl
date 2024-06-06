-module(type_predicates_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: atom()}).
-spec rec_slice(#rec1{} | atom()) -> #rec1{}.
rec_slice(R) when is_record(R, rec1) -> R;
rec_slice(A) when is_atom(A) -> #rec1{id = A}.
