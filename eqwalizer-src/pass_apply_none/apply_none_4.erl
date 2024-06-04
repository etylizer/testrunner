-module(apply_none_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec apply_none1(term()) -> nok.
apply_none1(F)
    when is_function(F, 1), is_function(F, 2) ->
    F(a).
