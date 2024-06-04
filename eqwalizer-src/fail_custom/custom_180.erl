-module(custom_180).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(foo,
        {a :: ok | error, b :: number(), c :: string()}).
-record(rec, {field :: number()}).
-type my_tup() :: {k1, v1} | {k2, v2}.
-type plist(K, V) :: [K | {K, V}].
-type mylist(A, B) :: [A | [A | B]].
-type reclist(A) :: [A | reclist(A)].
-type reclist2() :: [nil] | [reclist2()].
-type reclist3(A, B) :: [{A, B} | reclist3(B, A)].
-type id(T) :: T.
-type id2(T) :: id(T).
-type infinikey(T) :: [T | infinikey(T)].
-type state1() :: #{module := module(),
                    count := number()}.
-type state2() :: #{module => module(),
                    count => number()}.
-type a_n_map() :: #{atom() => number()}.
-spec 'test_plists_get_value/2_5'(atom()) -> true |
                                             undefined.
'test_plists_get_value/2_5'(X) ->
    proplists:get_value(X, [a]).
