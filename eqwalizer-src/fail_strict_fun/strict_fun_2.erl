-module(strict_fun_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(fun_wrap1, {inner_fun :: fun()}).
-spec mk_fun_wrap1b() -> #fun_wrap1{}.
mk_fun_wrap1b() ->
    #fun_wrap1{inner_fun = fun lists:filter/2}.
