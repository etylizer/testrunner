-module(custom_103).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec sum_2_neg() -> integer().
sum_2_neg() -> lists:sum([1.0, 2, 3]).
