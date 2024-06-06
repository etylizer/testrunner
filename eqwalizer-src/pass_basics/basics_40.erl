-module(basics_40).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lt(A, A) -> boolean().
gt(X1, X2) -> X1 > X2.
-spec gt(A, A) -> boolean().
lt(X1, X2) -> X1 < X2.
-spec clamp(integer(), integer(),
            integer()) -> integer().
clamp(Low, High, Num) ->
    case lt(Num, Low) of
        true -> Low;
        false ->
            case gt(Num, High) of
                true -> High;
                false -> Num
            end
    end.
