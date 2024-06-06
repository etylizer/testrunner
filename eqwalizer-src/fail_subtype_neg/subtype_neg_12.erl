-module(subtype_neg_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map05(#{a | b => a | b | c}) -> #{a := a | b,
                                        b => a | b}.
map05(M) -> M.
