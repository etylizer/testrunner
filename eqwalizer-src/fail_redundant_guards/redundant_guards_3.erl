-module(redundant_guards_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec redundant_guard_3(ok) -> ok.
redundant_guard_3(X) ->
    is_atom(X) andalso X =:= ok orelse error(fail),
    X.
