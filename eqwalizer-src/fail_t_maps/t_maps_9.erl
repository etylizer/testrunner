-module(t_maps_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec shape_02_neg() -> #{zero := number(),
                          one => number()}.
shape_02_neg() -> #{zero => 0, one => one}.
