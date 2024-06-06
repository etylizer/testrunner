-module(maybe_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-spec map2(fun((A, B) -> C), maybe(A),
           maybe(B)) -> maybe(C).
map2(F, {'$#maybe:maybe.just', A},
     {'$#maybe:maybe.just', B}) ->
    {'$#maybe:maybe.just', F(A, B)};
map2(_F, _Ma, _Mb) -> {'$#maybe:maybe.nothing'}.
-spec map2(fun((A, B) -> C)) -> fun((maybe(A),
                                     maybe(B)) -> maybe(C)).
map2(F) -> fun (Ma, Mb) -> map2(F, Ma, Mb) end.
