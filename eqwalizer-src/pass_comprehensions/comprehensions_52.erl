-module(comprehensions_52).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec gen1() -> [binary() | undefined].
gen1() -> error(undefined).
-spec test44() -> [binary()].
test44() ->
    Res = [X || X <- gen1(), X =/= undefined],
    Res.
