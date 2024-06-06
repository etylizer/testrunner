-module(types1_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type my_number() :: number().
-spec my_number_id(my_number()) -> my_number().
my_number_id(N) -> N.
