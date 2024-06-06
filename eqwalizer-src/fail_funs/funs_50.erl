-module(funs_50).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec getter6_neg(fun((atom()) -> _)) -> fun() |
                                         fun((term()) -> ok).
getter6_neg(F) -> fun (A) -> F(A) end.
