-module(eqwater_91).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec multi_param1(term(),
                   number() | atom()) -> number().
multi_param1(_, A) when is_atom(A) -> 1;
multi_param1(_, Y) -> Y.
