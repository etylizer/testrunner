-module(iolists_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec head_or([A], A) -> A.
head_or([A], _) -> A;
head_or([_], A) -> A.
-spec io_list_head(iolist()) -> binary() |
                                iolist() |
                                number().
io_list_head(X) when is_list(X) -> head_or(X, X).
