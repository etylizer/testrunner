-module(dyn_remote_funs_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_05(atom(), number()) -> fun().
test_05(F, N) -> fun lists:F/N.
