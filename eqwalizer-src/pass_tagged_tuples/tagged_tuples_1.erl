-module(tagged_tuples_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Res, Err) :: {ok, Res} | {err, Err}.
-spec mk_result(boolean()) -> result(atom(), binary()).
mk_result(true) -> {ok, result};
mk_result(false) -> {err, <<>>}.
