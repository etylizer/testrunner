-module(parametricity_26).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec select(normal, Normal, _) -> Normal;
            (extended, _, Extended) -> Extended.
select(normal, Normal, _) -> Normal;
select(extended, _, Extended) -> Extended.
-spec select_tagged_neg2(normal) -> integer();
                        (extended) -> binary().
select_tagged_neg2(T) -> select(T, 0, 0).
