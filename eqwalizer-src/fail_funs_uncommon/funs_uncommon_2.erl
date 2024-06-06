-module(funs_uncommon_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rectup, {field :: {fun((a) -> a), atom()}}).
-spec test_02() -> #rectup{}.
test_02() ->
    #rectup{field = {fun (X) -> X end, an_atom}}.
