-module(guards_simple_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec boolean_pos_2(term()) -> boolean().
boolean_pos_2(X) -> if is_boolean(X) -> X end.
