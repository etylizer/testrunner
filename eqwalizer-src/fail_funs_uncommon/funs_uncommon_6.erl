-module(funs_uncommon_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_06(#{key := fun((a) -> a)}) -> #{key :=
                                                fun((a) -> a)}.
test_06(M) -> M#{key => fun (X) -> X end}.
