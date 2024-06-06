-module(custom_301).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec my_filter2(atom() | char()) -> [atom() | char()].
my_filter2(A) when is_atom(A) -> atom_to_list(A);
my_filter2(C) when is_number(C) -> [C].
