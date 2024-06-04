-module(strict_receive_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec receive_number_timeout1() -> number().
receive_number_timeout1() ->
    receive
        {number, N} -> N;
        N when is_number(N) -> N
        after 100 -> 0
    end.
