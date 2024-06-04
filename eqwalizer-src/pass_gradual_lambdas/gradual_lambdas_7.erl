-module(gradual_lambdas_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ex2() -> fun((term()) -> term()) |
               fun((string()) -> string()).
ex2() -> fun (X) -> X + 1 end.
