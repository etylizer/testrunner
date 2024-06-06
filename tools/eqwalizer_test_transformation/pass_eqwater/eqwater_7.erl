-module(eqwater_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ03_cl({a, atom()} | {b, binary()}) -> binary().
occ03_cl({a, A}) -> atom_to_binary(A);
occ03_cl({_, B}) -> B.
