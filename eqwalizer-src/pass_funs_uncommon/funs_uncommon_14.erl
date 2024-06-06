-module(funs_uncommon_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test14() -> fun((a) -> a).
test14() ->
    try erlang:display(ok) of
        ok -> fun (X) -> X end
    catch
        error -> fun (X) -> X end
    end.
