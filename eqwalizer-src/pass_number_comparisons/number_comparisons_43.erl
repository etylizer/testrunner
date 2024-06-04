-module(number_comparisons_43).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_35(term()) -> pos_integer().
test_35(X) when X > 0 andalso is_number(X) -> X.
