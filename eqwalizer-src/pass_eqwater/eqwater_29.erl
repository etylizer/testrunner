-module(eqwater_29).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec produce() -> atom() | binary().
close() -> ok.
-spec close() -> ok.
produce() -> error(not_implemented).
-spec try_of_01() -> binary().
try_of_01() ->
    try produce() of
        A when is_atom(A) -> atom_to_binary(A);
        B -> B
    catch
        _ -> <<>>
    after
        close()
    end.
