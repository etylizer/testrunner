-module(maybe_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-export_type([maybe/1]).
-spec with_default(A, maybe(A)) -> A.
with_default(_Default, {'$#maybe:maybe.just', Value}) ->
    Value;
with_default(Default, {'$#maybe:maybe.nothing'}) ->
    Default.
