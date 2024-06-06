-module(t_maps_58).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec to_map4(#{a() => n()} |
              #{n() => a()} |
              #{id => id | no_id} |
              {}) -> #{a() | n() => a() | n()}.
to_map4(#{} = M) -> M.
