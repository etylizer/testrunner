-module(otp_opaques_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec to_gb_set3([A]) -> gb_sets:set(A).
to_gb_set3(Elems) -> gb_sets:from_list(Elems).
