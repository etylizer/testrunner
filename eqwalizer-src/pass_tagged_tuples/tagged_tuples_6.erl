-module(tagged_tuples_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Res, Err) :: {ok, Res} | {err, Err}.
-type r_result(Res, Err) :: {Res, ok} | {Err, err}.
-type marked_tuple() :: {number(), atom()} |
                        {atom(), number()}.
-type deep_tagged_tuple() :: {{id, atom()},
                              {age, number()}} |
                             {{borough, string()}, {city, string()}}.
-type file_result() :: {ok, Handle :: integer()} |
                       {error, Reason :: string()}.
-spec get_atom2(marked_tuple()) -> atom().
get_atom2({N, A}) when is_number(N) -> A;
get_atom2({A, N}) when is_number(N) -> A.
