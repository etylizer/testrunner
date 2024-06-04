-module(booleans_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type trill() :: true.
-spec only_false() -> false.
only_false() -> false.
-spec andalso1() -> false.
andalso1() -> only_false() andalso only_false().
