-module(gradual_overloaded_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec extract({pid, pid()}) -> pid();
             ({binary, binary()}) -> binary().
extract({pid, Pid}) -> Pid;
extract({binary, Bin}) -> Bin.
