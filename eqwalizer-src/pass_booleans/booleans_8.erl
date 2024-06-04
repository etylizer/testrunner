-module(booleans_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type trill() :: true.
-spec only_true() -> true.
only_true() -> true.
-spec andalso5() -> 1.
andalso5() -> only_true() andalso 1.
