-module(funs2_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec generic(fun((T) -> T), fun((T) -> T), T) -> T.
generic({}, {}, {}) -> nok.
-spec test_err_msg() -> nok.
test_err_msg() ->
    generic(fun (X) -> X end,
            fun erlang:atom_to_list/1,
            fun erlang:list_to_atom/1),
    nok.
