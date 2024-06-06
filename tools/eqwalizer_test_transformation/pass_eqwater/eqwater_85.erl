-module(eqwater_85).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type choice(A) :: {bad, A} | {good, A}.
-type error() :: {err, atom()}.
-spec get(choice(A) | error()) -> A | error().
get({Tag, A}) when Tag == bad; Tag == good -> A;
get(Err) -> Err.
