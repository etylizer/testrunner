-module(eqwater_26).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ09(atom()) -> boolean() | undef.
occ09(X) when is_boolean(X) -> X;
occ09(_) -> undef.
