-module(gradual_untyped_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(untyped, {field1 :: atom(), field2}).
-spec parse_union(binary(), ParseField,
                  EmptyValue) -> {Value | EmptyValue, binary()} |
                                 no_return() when ParseField :: fun((binary(),
                                                                     integer(),
                                                                     non_neg_integer()) -> skip |
                                                                                           {value,
                                                                                            Value,
                                                                                            binary()}).
parse_union(_, _, _) -> erlang:error(stub).
-spec value_parse_atom2(binary()) -> {atom(), binary()}.
value_parse_atom2(X) ->
    parse_union(X, fun dyns/3, undefined).
