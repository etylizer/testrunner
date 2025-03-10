-module(gradual_untyped_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(untyped, {field1 :: atom(), field2}).
-spec inspect_untyped(#untyped{}) -> atom().
inspect_untyped(U) ->
    Field2 = U#untyped.field2,
    eqwalizer:reveal_type(Field2),
    Field2.
