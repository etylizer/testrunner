-module(gradual_custom_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ets_tab2list_3_neg() -> term().
ets_tab2list_3_neg() -> ets:tab2list("not atom").
