-module(custom_317).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_remove3_neg(atom(), #{a := integer()}) -> #{a
                                                           := integer()}.
maps_remove3_neg(A, M) -> maps:remove(A, M).
