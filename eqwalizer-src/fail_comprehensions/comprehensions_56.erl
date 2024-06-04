-module(comprehensions_56).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1,
        {b :: undefined | binary(), s :: undefined | string()}).
-record(rec2,
        {b :: undefined | binary(), s :: undefined | string()}).
-spec gen3() -> [#rec1{} | #rec2{} | binary()].
gen3() -> error(undefined).
-spec test48() -> [#rec1{} | #rec2{}].
test48() ->
    Res = [Rec
           || Rec <- gen3(),
              is_record(Rec, rec1) or is_record(Rec, rec2)],
    Res.
