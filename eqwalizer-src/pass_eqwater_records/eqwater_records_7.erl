-module(eqwater_records_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: integer(), name :: string()}).
-type version3_int() :: {integer(),
                         integer(),
                         integer()}.
-spec id7(#rec1{} | version3_int()) -> integer().
id7(#rec1{id = Id}) -> Id;
id7({X, _Y, _Z}) -> X.
