-module(as_pat_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_b, {b :: binary()}).
-spec box_b(binary()) -> #box_b{}.
box_b(B) -> #box_b{b = B}.
