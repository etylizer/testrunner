-module(fun_stats2_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec errors(atom()) -> ok.
errors(Atom) ->
    _ = 1 + Atom,
    _ = binary_to_atom(Atom),
    _ = "" ++ Atom,
    ok.
