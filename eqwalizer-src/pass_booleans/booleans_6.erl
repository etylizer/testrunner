-module(booleans_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec only_false() -> false.
only_true() -> true.
-spec only_true() -> true.
only_false() -> false.
-spec andalso2() -> false.
andalso2() -> only_false() andalso only_true().
