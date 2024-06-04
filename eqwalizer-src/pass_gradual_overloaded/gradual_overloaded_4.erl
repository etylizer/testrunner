-module(gradual_overloaded_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(r, {count :: integer()}).
-spec extract({pid, pid()}) -> pid();
             ({binary, binary()}) -> binary().
extract({pid, Pid}) -> Pid;
extract({binary, Bin}) -> Bin.
-spec use_extract1_specced({binary,
                            binary()}) -> atom().
use_extract1_specced(X) ->
    Y = extract(X),
    binary_to_atom(Y).
