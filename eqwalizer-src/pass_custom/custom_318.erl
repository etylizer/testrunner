-module(custom_318).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_remove4(#{a := integer(), b := atom()} |
                   #{a := atom(), b := pid()}) -> #{b := atom()} |
                                                  #{b => pid()}.
maps_remove4(M) -> maps:remove(a, M).
