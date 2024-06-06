-module(types1_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ret_op_in_constraint() -> Ret when Ret :: -1.
ret_op_in_constraint() -> -1.
