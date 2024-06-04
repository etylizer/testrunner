-module(tries_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo() -> {atom(), term()}.
foo() -> {foo, bar}.
-spec test04_pos(term()) -> {ok | error, atom()}.
test04_pos(X) ->
    Res = try foo() of
              {_, _} -> ok
          catch
              {error, _} -> error
          after
              if is_atom(X) -> ok end
          end,
    {Res, X}.
