-module(basics_51).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec always(A, _) -> A.
always(A, _) -> A.
-spec always(A) -> fun((_) -> A).
always(A) -> fun (X) -> always(A, X) end.
