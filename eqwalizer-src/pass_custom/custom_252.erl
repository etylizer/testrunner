-module(custom_252).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_4(atom()) -> #{b => atom()}.
maps_without_4(Atom) ->
    maps:without([a], #{a => ka, b => Atom}).
