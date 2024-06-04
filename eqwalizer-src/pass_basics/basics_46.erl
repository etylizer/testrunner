-module(basics_46).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type order() :: {'$#basics:order.lt'} |
                 {'$#basics:order.eq'} |
                 {'$#basics:order.gt'}.
-type never() :: {'$#basics:never.just_one_more',
                  never()}.
-export_type([order/0]).
-export_type([never/0]).
-spec apR(A, fun((A) -> B)) -> B.
apR(X, F) -> F(X).
-spec apR(A) -> fun((fun((A) -> B)) -> B).
apR(X) -> fun (F) -> apR(X, F) end.
