-module(list_28).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec drop(integer(), [A]) -> [A].
drop(N, L) when N =< 0 -> L;
drop(_N, []) -> [];
drop(N, [_H | T]) -> drop(N - 1, T).
