-module(funs_uncommon_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: fun((a) -> a)}).
-spec test_03() -> #rec{}.
test_03() -> #rec{field = fun (X) -> X end}.
