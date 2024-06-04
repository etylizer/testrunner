-module(scoping_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test03() -> {tuple | triple, atom(), number()}.
test03() ->
    Marker = receive
                 {A, N} when is_atom(A), is_number(N) -> tuple;
                 {A, N, _} when is_atom(A), is_number(N) -> triple
             end,
    {Marker, A, N}.
