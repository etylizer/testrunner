-module(funs_37).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec named_1() -> fun((string()) -> atom()).
named_1() -> fun _Lta(X) -> list_to_atom(X) end.
