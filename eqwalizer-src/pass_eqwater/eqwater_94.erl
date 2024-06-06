-module(eqwater_94).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec multi_param4(atom(),
                   number() | atom()) -> {term(), number()}.
multi_param4(X, Y) when is_atom(Y) -> {X, 1};
multi_param4(_, Y) -> {ok, Y}.
