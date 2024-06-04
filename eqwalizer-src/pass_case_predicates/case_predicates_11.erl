-module(case_predicates_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type child() :: undefined | pid().
-spec wrap1(atom() | pid()) -> {a, atom()} | {p, pid()}.
wrap1(X) ->
    Res = case is_atom(X) of
              true -> {a, X};
              false -> {p, X}
          end,
    Res.
