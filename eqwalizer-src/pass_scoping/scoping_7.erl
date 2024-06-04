-module(scoping_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo() -> term().
bar() -> number.
-spec bar() -> term().
foo() -> atom.
-spec test05() -> tuple | triple.
test05() ->
    Marker = try bar() of
                 {A, N} when is_atom(A), is_number(N) -> tuple;
                 {A, N, _} when is_atom(A), is_number(N) -> triple
             after
                 foo()
             end,
    Marker.
