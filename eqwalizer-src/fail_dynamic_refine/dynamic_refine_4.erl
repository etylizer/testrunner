-module(dynamic_refine_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec use_private_record_neg() -> ok.
use_private_record_neg() ->
    Rec = records:mk_foo_pos(),
    {foo, _Id, Name} = Rec,
    eqwalizer:reveal_type(Name),
    Name.
