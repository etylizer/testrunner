-module(t_maps_41).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type foo_bar(F, B) :: #{foo := F, bar := B}.
-type foo_bar_opt(F, B) :: #{foo => F, bar => B}.
-spec foo_bar_u_opt(foo_bar_opt(F1, B1), F1,
                    B1) -> foo_bar(F1, B1).
foo_bar_u_opt(FB, F1, B1) -> FB#{foo => F1, bar => B1}.
