-module(custom_42).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_filter_empty(Pred) -> Map when Pred ::
                                             fun((Key, Value) -> boolean()),
                                         Map :: #{Key => Value}.
map_filter_empty(Pred) -> maps:filter(Pred, #{}).
