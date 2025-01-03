-module(as_pat_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_b, {b :: binary()}).
-spec unbox_b(#box_b{}) -> binary().
unbox_b({b, B}) -> B.
