-module(hints_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type data() :: {tag1, atom()} |
                {tag1, binary()} |
                {tag2, pid()}.
-spec reveal_type1a(data()) -> atom().
reveal_type1a({tag1, _A}) ->
    eqwalizer:reveal_type(_A),
    tag1.
