-module(t_maps_108).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-type foo_bar(F, B) :: #{foo := F, bar := B}.
-type foo_bar_opt(F, B) :: #{foo => F, bar => B}.
-type kv(K, V) :: #{K => V}.
-type rec_shape() :: #{item := rec_shape() | undefined}.
-type rec_shape_v2() :: #{item_v2 :=
                              rec_shape_v2() | undefined}.
-type gen_shape(T) :: #{item := T | gen_shape(T)}.
-type gen_shape_v2(T) :: #{item_v2 :=
                               T | gen_shape_v2(T)}.
-type gen_shape_expanded(T) :: #{item :=
                                     T | #{item := T | gen_shape_expanded(T)}}.
-export_type([a/0, n/0]).
-spec misc_mismatch_1_neg(#{k_ok => term(),
                            k_wrong1 => pid(), k_wrong2 => pid(),
                            k_req1 => term(), k_req2 => term(),
                            k_extra => term()}) -> #{k_ok => term(),
                                                     k_wrong1 => atom(),
                                                     k_wrong2 => atom(),
                                                     k_req1 := atom(),
                                                     k_req2 := atom(),
                                                     k_req3 := atom()}.
misc_mismatch_1_neg(X) -> X.
