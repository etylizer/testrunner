-module(binaries_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec convert_neg2(binary()) -> number().
convert_neg2(Bits) ->
    <<X:(self())>> = Bits,
    X.
