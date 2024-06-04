-module(scoping_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test04() -> {tuple | triple | timeout,
                   atom(),
                   number()}.
test04() ->
    Marker = receive
                 {A, N} when is_atom(A), is_number(N) -> tuple;
                 {A, N, _} when is_atom(A), is_number(N) -> triple
                 after 10 -> A = a, N = 1, timeout
             end,
    {Marker, A, N}.
