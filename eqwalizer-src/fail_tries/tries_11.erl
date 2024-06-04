-module(tries_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ok() -> ok.
only_atom(A) when is_atom(A) -> ok.
-spec only_atom(atom()) -> ok.
ok() -> ok.
-spec test08_neg() -> ok.
test08_neg() -> try ok() after only_atom(1) end.
