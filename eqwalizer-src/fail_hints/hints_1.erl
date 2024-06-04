-module(hints_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type data() :: {tag1, atom()} |
                {tag1, binary()} |
                {tag2, pid()}.
-spec no_cast() -> atom().
no_cast() ->
    Key = get(key),
    Key.
