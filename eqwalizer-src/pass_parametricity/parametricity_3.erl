-module(parametricity_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec member(Elem, List) -> boolean() when Elem :: T,
                                           List :: [T].
member(_Elem, []) -> false;
member(Elem, [Elem | _]) -> true;
member(Elem, [_ | T]) -> member(Elem, T).
