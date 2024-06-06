-module(eqwater_129).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_binary_pat_4_neg({binary(), binary()} |
                           {atom(), atom()},
                           integer()) -> binary().
occ_binary_pat_4_neg(X, Size) ->
    case X of
        {<<_:Size/binary>>, Bin} -> Bin;
        {_, Y} -> Y
    end.
