-module(eqwater_records_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: integer(), name :: string()}).
-record(rec2, {name :: string(), id :: integer()}).
-type version() :: non_neg_integer().
-type version3() :: {version(), version(), version()}.
-type version3_int() :: {integer(),
                         integer(),
                         integer()}.
-type user() :: #rec1{} | integer().
-spec id6(#rec1{} | version3()) -> integer().
id6(#rec1{id = Id}) -> Id;
id6({X, _Y, _Z}) -> X.
