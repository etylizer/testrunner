-module(static_maybe_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maybe_06_neg({term(), atom()}) -> atom().
maybe_06_neg(T) ->
    maybe
        {ok, A} ?= T,
        A
    else
        B when not is_atom(B) -> err;
        Atom -> Atom
    end.
