-module(otp_opaques_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec is_member(atom(), [boolean()]) -> boolean().
is_member(A, Bs) ->
    Set = gb_sets:from_list(Bs),
    gb_sets:is_member(A, Set).
