-module(t_maps_49).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec needs_shape_a(#{a := term()}) -> ok.
needs_shape_ab(_) -> ok.
-spec needs_shape_ab(#{a := term(), b := term()}) -> ok.
needs_shape_a(_) -> ok.
-spec shape_ab(#{a := term()}) -> ok.
shape_ab(X) ->
    needs_shape_a(X),
    needs_shape_ab(X#{b => hello}).
