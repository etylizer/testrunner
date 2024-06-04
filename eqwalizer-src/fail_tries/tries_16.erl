-module(tries_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec repeated_vars(term()) -> ok.
repeated_vars(X) -> try X of {X, X} -> X after ok end.
