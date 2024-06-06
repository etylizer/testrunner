-module(any_fun_type_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec to_f_any_pos(fun((term(),
                        term()) -> pid())) -> fun().
to_f_any_pos(F) -> F.
