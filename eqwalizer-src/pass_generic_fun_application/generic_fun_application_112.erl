-module(generic_fun_application_112).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec expect_shape_opt(#{t => T, u => U}) -> {T, U} |
                                             undefined.
expect_shape_opt(#{t := T, u := U}) -> {T, U};
expect_shape_opt(_) -> undefined.
-spec shape_width_pos() -> {pid(), number()} |
                           undefined.
shape_width_pos() ->
    Pid = erlang:self(),
    expect_shape_opt(#{t => Pid}).
