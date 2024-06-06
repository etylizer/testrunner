-module(custom_179).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keysort3_neg() -> none().
keysort3_neg() -> lists:keysort(2, [{a, c}, {b, d}]).
