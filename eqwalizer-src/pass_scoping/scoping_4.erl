-module(scoping_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo() -> term().
bar() -> number.
-spec bar() -> term().
foo() -> atom.
-spec test02() -> {an | na,
                   atom() | number(),
                   atom() | number()}.
test02() ->
    {X, Y} = {foo(), bar()},
    Marker = if is_atom(X), is_number(Y) -> an;
                is_number(X), is_atom(Y) -> na
             end,
    {Marker, X, Y}.
