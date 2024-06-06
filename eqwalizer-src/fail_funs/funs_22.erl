-module(funs_22).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-spec x4([n()], atom()) -> [n()].
nmap(F, XS) -> [F(X) || X <- XS].
-spec nmap(fun((n()) -> n()), [n()]) -> [n()].
x4(L, N) -> nmap(fun (Y) -> Y + N end, L).
