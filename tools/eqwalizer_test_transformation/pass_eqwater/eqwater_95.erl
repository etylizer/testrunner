-module(eqwater_95).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo1({atom() | binary(),
            atom() | binary()}) -> binary().
foo1({X, Y}) when is_atom(X) or is_atom(Y) -> <<>>;
foo1({B1, B2}) -> <<B1/binary, B2/binary>>.
