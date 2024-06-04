-module(generic_fun_application_101).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec stuff_2([{c, #{f => a, ff := b}} |
               fun((b) -> d) |
               #{{} => {}}] |
              #{b => b}) -> pid().
stuff_2(0) -> erlang:self().
