-module(funs_24).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type int_result() :: fun(() -> {ok, integer()} |
                                error).
-type getter(A) :: fun((atom()) -> A).
-type stream(A) :: eos | {head, A}.
-spec xmap(fun((A) -> none()), [A]) -> [none()].
xmap(F, XS) -> [F(X) || X <- XS].
-spec x6([none()], none()) -> [none()].
x6(L, B) -> xmap(fun (_) -> B end, L).
