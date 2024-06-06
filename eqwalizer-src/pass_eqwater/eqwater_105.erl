-module(eqwater_105).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type t10() :: {atom(), a | b, undefined | binary()}.
-spec occ38(t10()) -> binary() | no_binary.
occ38({_, a, undefined}) -> <<>>;
occ38({_, a, B}) -> B.
