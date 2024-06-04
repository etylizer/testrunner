-module(dynamic_local_funs_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fun4b() -> pid().
fun4b() ->
    spawn_link(fun F() ->
                       receive
                           continue -> F();
                           exit -> ok
                       end
               end),
    ok.
