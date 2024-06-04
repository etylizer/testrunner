-module(type_asserts_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec assert1(term()) -> binary().
assert1(Arg) ->
    is_binary(Arg) orelse throw(bad_arg),
    Arg.
