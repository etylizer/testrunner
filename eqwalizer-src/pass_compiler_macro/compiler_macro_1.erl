-module(compiler_macro_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(foo, {a, b}).
-spec record_info_size() -> integer().
record_info_size() -> record_info(size, foo).
