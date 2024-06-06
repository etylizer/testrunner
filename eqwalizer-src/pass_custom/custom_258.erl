-module(custom_258).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_10(atom()) -> #{atom() => y | z}.
maps_without_10(Atom) ->
    maps:without([self(), w, Atom], #{a => y, b => z}).
