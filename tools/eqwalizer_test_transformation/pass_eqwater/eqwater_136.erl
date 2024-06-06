-module(eqwater_136).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type my_list() :: {term(), my_list()} | number().
-spec foo8(my_list()) -> number().
foo8(Args) ->
    case Args of
        {_, L} -> 1 + foo8(L);
        _ -> Args
    end.
