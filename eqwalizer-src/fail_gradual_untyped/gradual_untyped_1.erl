-module(gradual_untyped_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec reveal_any_list(list()) -> ok.
reveal_any_list(_L) ->
    eqwalizer:reveal_type(_L),
    ok.
