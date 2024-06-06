-module(custom_82).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec queue_filter_5_neg() -> nok.
queue_filter_5_neg() ->
    queue:filter(fun (1) -> {true, a};
                     (2) -> true
                 end,
                 not_a_queue),
    nok.
