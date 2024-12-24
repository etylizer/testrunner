-module(custom_300).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec my_filter1(atom() | char()) -> [char()].
my_filter1(A) when is_atom(A) -> atom_to_list(A);
my_filter1(C) when is_number(C) -> [C].