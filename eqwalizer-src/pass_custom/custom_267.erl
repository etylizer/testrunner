-module(custom_267).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec none() -> none().
none() -> error(none).
-spec maps_without_with_none(boolean()) -> #{id =>
                                                 integer()}.
maps_without_with_none(Flag) ->
    M = case Flag of
            true ->
                maps:without([name], #{id => 1, name => "name"});
            false -> maps:without([name], none())
        end,
    M.
