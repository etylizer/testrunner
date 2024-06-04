-module(maybe_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-export_type([maybe/1]).
-spec is_just(maybe(_)) -> boolean().
is_just({'$#maybe:maybe.just', _}) -> true;
is_just({'$#maybe:maybe.nothing'}) -> false.
