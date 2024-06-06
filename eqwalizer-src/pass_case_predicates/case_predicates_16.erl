-module(case_predicates_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec andalso1(integer() | undefined) -> pos_integer().
andalso1(X) ->
    case is_number(X) andalso X > 0 of
        true -> X;
        false -> 1
    end.
