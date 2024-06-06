-module(funs_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_arity_2() -> ok.
test_arity_2() -> fun (_X) -> ok end(1, 2, 3).
