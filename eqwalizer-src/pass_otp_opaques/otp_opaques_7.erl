-module(otp_opaques_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec union(Set1, Set2) -> Set3 when Set1 ::
                                         gb_sets:set(A),
                                     Set2 :: gb_sets:set(B),
                                     Set3 :: gb_sets:set(A | B).
union(_, _) -> gb_sets:from_list([]).
