-module(tagged_tuples_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type file_result() :: {ok, Handle :: integer()} |
                       {error, Reason :: string()}.
-spec file_open() -> file_result().
file_open() ->
    case rand:uniform(2) of
        1 -> {ok, 20};
        2 -> {error, "ENOTFOUND"}
    end.
