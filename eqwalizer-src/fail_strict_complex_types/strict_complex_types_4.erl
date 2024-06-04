-module(strict_complex_types_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type complex_map() :: #{id := integer(),
                         {secret, id} => integer(), atom() => term()}.
-spec mk_complex_map() -> complex_map().
mk_complex_map() -> #{id => 1}.
-spec use_complex_map4_neg() -> integer().
use_complex_map4_neg() ->
    Map = mk_complex_map(),
    lists:nth(7, Map).
