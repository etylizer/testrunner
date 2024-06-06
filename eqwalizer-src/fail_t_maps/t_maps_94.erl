-module(t_maps_94).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type rec_shape() :: #{item := rec_shape() | undefined}.
-type rec_shape_v2() :: #{item_v2 :=
                              rec_shape_v2() | undefined}.
-spec rec_shape_3_neg(rec_shape()) -> rec_shape_v2().
rec_shape_3_neg(X) -> X.
