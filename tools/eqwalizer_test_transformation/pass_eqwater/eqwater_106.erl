-module(eqwater_106).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec10,
        {f1 :: a | b, f2 :: undefined | binary()}).
-spec occ39(#rec10{}) -> binary().
occ39(#rec10{f2 = undefined}) -> <<>>;
occ39(#rec10{f2 = B}) -> B.
