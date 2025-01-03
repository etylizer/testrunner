-module(funs_uncommon_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: fun((a) -> a)}).
-spec test_04(#rec{}) -> #rec{}.
test_04(R) ->
    R#rec{field = {fun (X) -> X end, an_atom}}.
