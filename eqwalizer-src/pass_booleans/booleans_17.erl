-module(booleans_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type trill() :: true.
-spec make_trill() -> trill().
make_trill() -> true andalso true.
-spec andalso12() -> true.
andalso12() -> make_trill() andalso make_trill().
