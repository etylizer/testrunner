-module(custom_310).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec filter_rows({Rows,
                   FilterTs}) -> [User] when Rows :: [{User,
                                                       undefined,
                                                       integer()} |
                                                      User],
                                             FilterTs :: integer() | undefined,
                                             User :: binary().
filter_rows({Rows, FTS}) ->
    lists:filtermap(fun ({_, _, Ts})
                            when FTS =/= undefined, FTS > Ts ->
                            false;
                        ({User, _, _}) -> {true, User};
                        (User) -> {true, User}
                    end,
                    Rows).
