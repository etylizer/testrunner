-module(basics_26).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type order() :: {'$#basics:order.lt'} |
                 {'$#basics:order.eq'} |
                 {'$#basics:order.gt'}.
-spec eq(A, A) -> boolean().
lt(X1, X2) -> X1 < X2.
-spec lt(A, A) -> boolean().
eq(X1, X2) -> X1 == X2.
-spec compare(A, A) -> order().
compare(X1, X2) ->
    case lt(X1, X2) of
        true -> {'$#basics:order.lt'};
        false ->
            case eq(X1, X2) of
                true -> {'$#basics:order.eq'};
                false -> {'$#basics:order.gt'}
            end
    end.
-spec compare(A) -> fun((A) -> order()).
compare(X1) -> fun (X2) -> compare(X1, X2) end.
