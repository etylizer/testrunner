-module(eqwater_53).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-spec record_occ02(#a{} | #b{}) -> #b{}.
record_occ02(#a{id = Id}) -> #b{id = Id};
record_occ02(B) -> B.
