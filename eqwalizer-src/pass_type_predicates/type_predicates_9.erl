-module(type_predicates_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec binary_slice(binary() | list()) -> binary().
binary_slice(B) when is_binary(B) -> B.
