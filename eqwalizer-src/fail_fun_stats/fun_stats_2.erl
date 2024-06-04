-module(fun_stats_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: any_fun_type:f0()}).
-type alias() :: opaque:opair(ok, ok).
-export_type([alias/0]).
-spec wn_ey_sy() -> ok.
wn_ey_sy() -> wn_ey_sy() + 3.
