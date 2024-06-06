-module(eqwater_50).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec use_num_literals({number(), atom()} |
                       {atom(), binary()}) -> binary().
use_num_literals({3.14, A}) -> atom_to_binary(A);
use_num_literals({0, A}) -> atom_to_binary(A);
use_num_literals({N, _}) when is_number(N) -> <<>>;
use_num_literals({_, B}) -> B.
