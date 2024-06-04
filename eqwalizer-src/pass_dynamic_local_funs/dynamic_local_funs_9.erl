-module(dynamic_local_funs_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fun2a(boolean()) -> atom().
fun2a(B) ->
    Res = fun F() ->
                  case B of
                      true -> true;
                      false -> F()
                  end
          end(),
    Res.
