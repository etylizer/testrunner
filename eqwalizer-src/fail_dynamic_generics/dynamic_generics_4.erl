-module(dynamic_generics_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fapply(fun((T) -> U), T) -> U.
fapply(F, X) ->
    ZZ = F(X),
    ZZ.
-spec case11_neg(X) -> X.
case11_neg(X) ->
    Res = fapply(fun dyn_fun/1, X),
    {Res}.
