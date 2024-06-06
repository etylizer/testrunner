-module(eqwater_111).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(string_or_def,
        {value :: string() | undefined, default :: string()}).
-spec occ44(#string_or_def{}) -> string().
occ44(R = #string_or_def{value = undefined,
                         default = D}) ->
    D;
occ44(R = #string_or_def{}) -> R#string_or_def.value.
