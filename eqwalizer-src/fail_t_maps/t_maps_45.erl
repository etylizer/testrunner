-module(t_maps_45).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lit_type_neg(a) -> #{a => number()}.
lit_type_neg(A) -> #{A => 3}.
