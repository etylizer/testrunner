-module(eqwater_22).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ06_cl(atom() |
               integer() |
               binary()) -> binary().
occ06_cl(A) when not is_binary(A) -> <<>>;
occ06_cl(B) -> B.
