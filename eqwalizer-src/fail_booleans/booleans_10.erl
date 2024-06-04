-module(booleans_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type trill() :: true.
-spec b() -> boolean().
b() -> false.
-spec andalso7_neg() -> boolean().
andalso7_neg() -> 1 andalso b().
