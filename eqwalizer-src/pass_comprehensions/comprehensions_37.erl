-module(comprehensions_37).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec convert_data(binary()) -> [integer()].
convert_data(Bin) ->
    Lines = string:split(Bin, "\n", all),
    IntOrErrors = [string:to_integer(Line)
                   || Line <- Lines],
    [Int || {Int, _Rest} <- IntOrErrors, is_integer(Int)].
