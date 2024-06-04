-module(type_asserts_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec scope_neg(term()) -> {false | number(), number()}.
scope_neg(A) ->
    X = is_number(A) andalso A,
    {X, A}.
