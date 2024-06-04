-module(gradual_lambdas_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec hd_invariant([fun((A) -> A)]) -> fun((A) -> A).
hd_invariant([F | _]) -> F.
-spec test_invariant() -> fun((atom()) -> atom()).
test_invariant() -> hd_invariant([]).
