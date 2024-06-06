-module(eqwater_137).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type my_list() :: {term(), my_list()} | number().
-spec foo8_neg(my_list()) -> number().
foo8_neg(Args) ->
    case Args of
        {_, Args} -> 1 + foo8_neg(Args);
        _ -> Args
    end.
