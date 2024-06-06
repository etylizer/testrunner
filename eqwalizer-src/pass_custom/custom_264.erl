-module(custom_264).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_16(#{a := atom(), c := atom()} |
                      #{b := atom(), c := atom()}) -> #{c := atom()}.
maps_without_16(M) -> maps:without([a, b], M).
