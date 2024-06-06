-module(t_maps_104).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec missing_1_neg(#{a := va}) -> #{a := va}.
missing_1_neg(X) -> X.
