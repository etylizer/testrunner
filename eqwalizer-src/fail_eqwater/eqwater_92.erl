-module(eqwater_92).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec multi_param2_neg(term(),
                       number() | atom()) -> number().
multi_param2_neg(X, Y) when is_atom(X), is_atom(Y) -> 1;
multi_param2_neg(_, Y) -> Y.
