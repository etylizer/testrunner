-module(gradual_maybe_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maybe_14_neg(term()) -> err.
maybe_14_neg(T) ->
    maybe
        A ?= maybe
                 B ?= {a, T},
                 V = {b, B},
                 C ?= V
             end
    end.
