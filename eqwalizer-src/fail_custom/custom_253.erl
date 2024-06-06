-module(custom_253).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_5_neg(atom(), d | e) -> #{b =>
                                                 atom()}.
maps_without_5_neg(Atom, DOrE) ->
    maps:without([a, c, DOrE],
                 #{a => ka, b => Atom, c => self(), d => kd}).
