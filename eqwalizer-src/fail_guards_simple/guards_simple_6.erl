-module(guards_simple_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec atom_neg_3(term()) -> atom().
atom_neg_3(X) -> case X of Y when is_tuple(Y) -> Y end.
