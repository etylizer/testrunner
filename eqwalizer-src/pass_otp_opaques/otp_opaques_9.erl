-module(otp_opaques_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec uniques4([A], [B]) -> [A | B] when A :: atom(),
                                         B :: number().
uniques4(Elems1, Elems2) ->
    Set1 = gb_sets:from_list(Elems1),
    Set2 = gb_sets:from_list(Elems2),
    UnionSet = gb_sets:union(Set1, Set2),
    UnionList = gb_sets:to_list(UnionSet),
    UnionList.
