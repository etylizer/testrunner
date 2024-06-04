-module(case_predicates_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type child() :: undefined | pid().
-spec wrap4(atom() | pid()) -> {a, atom()} | {p, pid()}.
wrap4(X) ->
    case is_pid(X) of
        true -> {p, X};
        false -> {a, X}
    end.
