-module(custom_98).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type my_tup() :: {k1, v1} | {k2, v2}.
-spec keytake_3_1(term()) -> {value,
                              my_tup(),
                              [my_tup()]} |
                             false.
keytake_3_1(X) ->
    lists:keytake(X, 1, [{k1, v1}, {k2, v2}]).
