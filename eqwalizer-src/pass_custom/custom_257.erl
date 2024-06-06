-module(custom_257).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_9(#{atom() => number()}) -> #{atom()
                                                     => number()}.
maps_without_9(D) -> maps:without([a], D).
