-module(eqwater_100).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo6(atom() | binary(),
           atom() | binary()) -> binary().
foo6(A1, A2) when is_atom(A1) and is_atom(A2) -> <<>>;
foo6(A, B) when is_atom(A) -> B;
foo6(B, A) when is_atom(A) -> B;
foo6(B1, B2) -> <<B1/binary, B2/binary>>.
