-module(booleans_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec only_false() -> false.
only_false() -> false.
-spec andalso6() -> false.
andalso6() -> only_false() andalso 1.
