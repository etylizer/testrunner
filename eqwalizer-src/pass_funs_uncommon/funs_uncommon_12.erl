-module(funs_uncommon_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rectup, {field :: {fun((a) -> a), atom()}}).
-record(rec, {field :: fun((a) -> a)}).
-spec test_12(a) -> fun((b, c) -> {a, b, c}).
test_12(a) -> fun (b, c) -> {a, b, c} end.
