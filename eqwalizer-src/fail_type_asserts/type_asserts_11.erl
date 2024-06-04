-module(type_asserts_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec double_andalso_neg(term(), term()) -> false |
                                            {atom(), number()}.
double_andalso_neg(N, A) ->
    is_number(N) andalso is_atom(A) andalso {N, A}.
