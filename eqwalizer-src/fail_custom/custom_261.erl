-module(custom_261).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type infinikey(T) :: [T | infinikey(T)].
-spec maps_without_13(infinikey(a)) -> #{b := pid()}.
maps_without_13(Keys) ->
    maps:without(Keys, #{a => self(), b => self()}).
