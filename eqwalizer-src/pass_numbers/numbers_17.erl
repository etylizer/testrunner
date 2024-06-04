-module(numbers_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec id(T) -> T.
id(X) -> X.
-spec test_16_wip_neg() -> integer().
test_16_wip_neg() -> id(2.0).
