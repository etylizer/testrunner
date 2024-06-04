-module(format_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec to_binary(term()) -> binary().
to_binary(X) ->
    erlang:iolist_to_binary(io_lib:format("~p", [X])).
