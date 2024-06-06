-module(eqwater_24).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ07(atom() | binary(),
            number() | list()) -> binary() | number().
occ07(X, _) when not is_atom(X) -> X;
occ07(_, Y) when is_list(Y) -> 0;
occ07(_, Y) -> Y.
