-module(custom_281).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_flatten_nil_2(atom(), atom(),
                          boolean()) -> [atom()].
lists_flatten_nil_2(A1, A2, Flag) ->
    lists:flatten([a,
                   b,
                   case Flag of
                       true -> A1;
                       false -> []
                   end,
                   case Flag of
                       true -> A2;
                       false -> []
                   end]).
