-module(guard_b_connections_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(r1, {ab :: atom() | binary()}).
-record(r2, {a :: atom()}).
-record(r3, {}).
-type r1() :: #r1{}.
-type r2() :: #r2{}.
-type r3() :: #r3{}.
-type all() :: r1() | r2() | r3().
-spec test4(all()) -> r1().
test4(R)
    when is_record(R, r1) andalso is_atom(element(2, R))
             orelse is_record(R, r2) ->
    R.
