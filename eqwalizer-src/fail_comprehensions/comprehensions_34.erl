-module(comprehensions_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test31(none()) -> binary().
test31(X) ->
    Res = << Y  || <<Y>> <= X >>,
    Res.
