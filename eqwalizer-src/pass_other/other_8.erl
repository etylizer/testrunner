-module(other_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec elab_var_scope(term()) -> term().
elab_var_scope(_) ->
    begin X = 3, X, fun () -> ok end end(),
    X.
