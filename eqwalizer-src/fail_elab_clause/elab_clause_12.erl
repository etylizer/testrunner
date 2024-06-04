-module(elab_clause_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo(term()) -> {atom(), atom()}.
foo(_) -> {any, any}.
-spec catch_foo4_neg(term()) -> number().
catch_foo4_neg(X) ->
    try foo(X) of
        {_Y, _} -> 1
    catch
        Class:_:Stack -> {Class, Stack}
    end.
