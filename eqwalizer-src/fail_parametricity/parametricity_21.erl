-module(parametricity_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec refine03(A, B, {A, B}) -> term().
refine03(X, X, _) -> [Elem || Elem <- X].
