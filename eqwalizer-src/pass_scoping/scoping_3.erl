-module(scoping_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec bar() -> term().
bar() -> number.
-spec test01() -> {tuple | triple, atom(), number()}.
test01() ->
    Marker = case bar() of
                 {A, N} when is_atom(A), is_number(N) -> tuple;
                 {A, N, _} when is_atom(A), is_number(N) -> triple
             end,
    {Marker, A, N}.
