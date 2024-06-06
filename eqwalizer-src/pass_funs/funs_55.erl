-module(funs_55).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type stream(A) :: eos | {head, A}.
-spec
     id_predicate(fun((stream(A)) -> ok)) -> fun((stream(A)) -> ok).
id_predicate(P) -> P.
