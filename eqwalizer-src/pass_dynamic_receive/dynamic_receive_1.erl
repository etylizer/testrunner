-module(dynamic_receive_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec receive_number1() -> number().
receive_number1() ->
    receive
        {number, N} -> N;
        N when is_number(N) -> N
    end.
