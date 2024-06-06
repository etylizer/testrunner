-module(funs_29).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-spec lmap_a_num(fun((A) -> n()), [A]) -> [n()].
lmap_a_num(_F, _XS) -> [].
