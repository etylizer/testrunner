-module(funs_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec body_is_not_checked() -> fun().
body_is_not_checked() ->
    Tup = {},
    fun () -> list_to_atom(Tup) end.
