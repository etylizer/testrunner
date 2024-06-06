-module(basics_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec mod_by(integer(), integer()) -> integer().
mod_by(X1, X2) -> X2 div X1.
