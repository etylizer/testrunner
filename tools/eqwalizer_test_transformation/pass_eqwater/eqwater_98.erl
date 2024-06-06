-module(eqwater_98).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo4(atom() | binary(),
           atom() | binary()) -> binary().
foo4(B1, B2) when not is_atom(B1) and not is_atom(B2) ->
    <<B1/binary, B2/binary>>;
foo4(_, _) -> <<>>.
