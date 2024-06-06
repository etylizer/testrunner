-module(custom_90).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec queue_filter_13_neg(none()) -> ok.
queue_filter_13_neg(Q) ->
    queue:filter(fun atom_to_list/1, Q),
    ok.
