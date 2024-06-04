-module(gradual_maybe_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maybe_12({ok, a | b} | err) -> ok | b | err.
maybe_12(T) ->
    maybe
        {ok, V} ?= T,
        (a = A) ?= V,
        ok
    else
        _ -> ok
    end.
