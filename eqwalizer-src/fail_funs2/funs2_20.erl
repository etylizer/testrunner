-module(funs2_20).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec repeated_vars_neg(atom()) -> number().
repeated_vars_neg(A) -> fun (X, X) -> X + A end(2, 2).
