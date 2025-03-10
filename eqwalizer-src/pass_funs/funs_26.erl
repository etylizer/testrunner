-module(funs_26).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-spec lmap_n_to_n(fun((n()) -> n()), [n()]) -> [n()].
lmap(_F, _XS) -> [].
-spec lmap(fun((A) -> B), [A]) -> [B].
lmap_n_to_n(F, Xs) -> lmap(F, Xs).
