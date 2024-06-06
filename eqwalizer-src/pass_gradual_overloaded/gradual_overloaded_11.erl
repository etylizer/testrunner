-module(gradual_overloaded_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(r, {count :: integer()}).
-spec rec_each(fun((#r{}) -> #r{}), #r{}) -> #r{};
              (fun((#r{}) -> #r{}), [#r{}]) -> [#r{}].
rec_each(F, R) when is_record(R, r) -> F(R);
rec_each(F, Rs) when is_list(Rs) -> lists:map(F, Rs).
-spec rec_each1(#r{}) -> #r{}.
rec_each1(Rec) ->
    rec_each(fun (R) -> R#r{count = 0} end, Rec).
