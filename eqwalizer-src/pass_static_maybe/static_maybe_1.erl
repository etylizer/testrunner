-module(static_maybe_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maybe_07({ok, atom()}) -> number().
maybe_07(T) ->
    maybe
        {err, V} ?= T,
        V
    else
        A when is_number(A) -> A
    end.
