-module(any_fun_type_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f1() :: fun((term()) -> term()).
-spec guard02_pos(term()) -> f1().
guard02_pos(F) when is_function(F, 1) -> F.
