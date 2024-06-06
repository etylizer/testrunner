-module(tagged_tuples_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type marked_tuple() :: {number(), atom()} |
                        {atom(), number()}.
-spec get_atom1(marked_tuple()) -> atom().
get_atom1({_, A}) when is_atom(A) -> A;
get_atom1({A, _}) when is_atom(A) -> A.
