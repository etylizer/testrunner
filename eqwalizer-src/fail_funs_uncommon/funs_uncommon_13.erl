-module(funs_uncommon_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_13() -> [fun((number()) -> number())].
test_13() -> [fun (X) -> X * Y end || Y <- [1, 2, 3]].
