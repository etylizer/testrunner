-module(funs_42).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type int_result() :: fun(() -> {ok, integer()} |
                                error).
-type getter(A) :: fun((atom()) -> A).
-type stream(A) :: eos | {head, A}.
-spec ints([int_result()]) -> [integer()].
ints([]) -> [];
ints([F | Fs]) ->
    case F() of
        {ok, I} -> [I | ints(Fs)];
        error -> ints(Fs)
    end.
