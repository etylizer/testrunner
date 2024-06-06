-module(custom_174).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec flatten2_strict() -> [atom()].
flatten2_strict() ->
    In = [a, [b, c]],
    Tail = [x, y, z],
    lists:flatten(In, Tail).
