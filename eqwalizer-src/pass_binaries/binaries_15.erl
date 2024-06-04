-module(binaries_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec special_syntax3() -> <<_:8, _:_*8>>.
special_syntax3() -> <<"binary">>.
