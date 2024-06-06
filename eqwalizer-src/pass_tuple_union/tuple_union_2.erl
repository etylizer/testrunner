-module(tuple_union_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type t1() :: {msg, ok | err, arg}.
-type t3() :: {msg, ok, arg} |
              {msg, err} |
              {foo, ok, argfoo} |
              {msg, err, arg}.
-spec test_02(t1()) -> t3().
test_02(X) -> X.
