-module(parametricity_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lmap(fun((A) -> B), [A]) -> [B].
lmap(_F, []) -> [];
lmap(F, [H | T]) -> [F(H) | lmap(F, T)].
