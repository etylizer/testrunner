-module(tries_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo() -> {atom(), term()}.
foo() -> {foo, bar}.
-spec test03_neg() -> atom().
test03_neg() ->
    Res = try foo() of
              {_, _} -> []
          catch
              {error, _} -> error
          end,
    Res.
