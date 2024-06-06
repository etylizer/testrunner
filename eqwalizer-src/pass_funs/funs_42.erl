-module(funs_42).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec atoms_to_binaries([atom()]) -> [binary()].
atoms_to_binaries(As) ->
    lists:map(fun atom_to_binary/1, As).
