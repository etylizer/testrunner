-module(custom_217).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keystore_neg() -> term().
keystore_neg() -> lists:keystore(a, 0, [], {}).
