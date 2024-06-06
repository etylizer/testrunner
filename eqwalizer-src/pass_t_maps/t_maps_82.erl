-module(t_maps_82).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec c_map2() -> #{Key => Atom} when Key :: atom(),
                                      Atom :: atom().
c_map2() -> #{key => ok}.
