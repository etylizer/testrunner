-module(otp_opaques_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec to_gb_set1([atom()]) -> gb_sets:set(atom()).
to_gb_set1(Atoms) -> gb_sets:from_list(Atoms).
