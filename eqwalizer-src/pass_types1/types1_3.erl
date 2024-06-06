-module(types1_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(test_record, {}).
-spec record_id(#test_record{}) -> #test_record{}.
record_id(X) -> X.
