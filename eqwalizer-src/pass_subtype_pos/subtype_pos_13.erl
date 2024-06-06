-module(subtype_pos_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map05(#{a := a | b, b => a | b}) -> #{a | b =>
                                                a | b | c}.
map05(M) -> M.
