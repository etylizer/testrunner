-module(any_fun_type_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f2() :: fun((term(), term()) -> term()).
-spec guard03_neg(term()) -> f2().
guard03_neg(F) when is_function(F, 1) -> F.
