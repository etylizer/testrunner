-module(custom_135).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_plists_get_bool2_neg() -> term().
test_plists_get_bool2_neg() -> proplists:get_bool(b, b).
