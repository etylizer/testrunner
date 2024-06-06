-module(funs_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-spec lam_ret_1_pos() -> fun((n(), n()) -> n()).
lam_ret_1_pos() -> fun (X, Y) -> X + Y end.
