-module(funs_52).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type getter(A) :: fun((atom()) -> A).
-spec getter8_neg(fun((atom()) -> _)) -> ok |
                                         getter(other).
getter8_neg(F) -> fun (A) -> F(A) end.
