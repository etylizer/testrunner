-module(custom_246).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type reclist2() :: [nil] | [reclist2()].
-spec flatten_reclist2(reclist2()) -> [nil].
flatten_reclist2(RL) -> lists:flatten(RL).
