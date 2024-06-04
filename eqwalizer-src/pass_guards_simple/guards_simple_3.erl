-module(guards_simple_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec atom_pos_3(term()) -> atom().
atom_pos_3(X) -> case X of Y when is_atom(Y) -> Y end.
