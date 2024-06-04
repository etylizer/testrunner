-module(iolists_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec first(iolist()) -> byte() | binary() | iolist().
first(IoList) when is_binary(IoList) -> IoList;
first([H | _]) -> H.