-module(tuple_union_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type t1() :: {msg, ok | err, arg}.
-type t2() :: {msg, ok, arg} | {msg, err, arg}.
-type t3() :: {msg, ok, arg} |
              {msg, err} |
              {foo, ok, argfoo} |
              {msg, err, arg}.
-type t4() :: {msg, ok | err, arg | nil}.
-type t5() :: {msg, ok, arg} |
              {msg, err, arg} |
              {msg, ok, nil} |
              {msg, err, nil}.
-type t6a() :: {msg, ok, arg}.
-type t6b() :: {msg, err, arg}.
-type t6() :: t6a() | t6b().
-type tree1() :: {leaf, atom()} |
                 {b1, tree1()} |
                 {b2, tree1()}.
-type branch() :: b1 | b2.
-type tree2() :: {leaf, atom()} | {branch(), tree2()}.
-type tree3() :: {leaf, atom()} |
                 {b1 | b2 | b3, tree2()}.
-spec test_02(t1()) -> t3().
test_02(X) -> X.
