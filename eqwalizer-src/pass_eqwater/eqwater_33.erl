-module(eqwater_33).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(eqwater, {f1, f2}).
-spec occ10(#eqwater{} | {err, term()}) -> {ok,
                                            term()} |
                                           {err, term()}.
occ10(In) ->
    case In of
        #eqwater{} -> {ok, In};
        Other -> Other
    end.
