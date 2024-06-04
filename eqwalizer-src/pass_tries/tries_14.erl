-module(tries_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ok() -> ok.
ok() -> ok.
-spec test11_pos(term(), boolean()) -> atom().
test11_pos(Y, Cond) ->
    Res = try ok() after if is_atom(Y) -> ok end end,
    if Cond -> Res;
       true -> Y
    end.
