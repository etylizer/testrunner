-module(custom_279).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_with_3(#{a := atom, n => number()}) -> #{n =>
                                                        number()}.
maps_with_3(M) -> maps:with([n], M).
