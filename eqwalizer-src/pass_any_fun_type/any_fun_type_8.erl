-module(any_fun_type_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec guard01_pos(term()) -> fun().
guard01_pos(F) when is_function(F, 1) -> F.
