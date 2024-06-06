-module(subtype_pos_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec
     f03(fun((term()) -> atom())) -> fun((atom()) -> term()).
f03(F) -> F.
