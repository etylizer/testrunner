-module(tuple_union_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type t4() :: {msg, ok | err, arg | nil}.
-type t5() :: {msg, ok, arg} |
              {msg, err, arg} |
              {msg, ok, nil} |
              {msg, err, nil}.
-spec test_03_neg(t4()) -> t5().
test_03_neg(X) -> X.
