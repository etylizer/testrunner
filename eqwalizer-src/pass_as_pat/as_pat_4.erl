-module(as_pat_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_n, {n :: number()}).
-spec unbox_n(#box_n{}) -> number().
unbox_n(#box_n{n = N}) -> N.
