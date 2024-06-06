-module(basics_31).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec 'or'(boolean(), boolean()) -> boolean().
'or'(B1, B2) -> B1 or B2.
-spec 'or'(boolean()) -> fun((boolean()) -> boolean()).
'or'(B1) -> fun (B2) -> 'or'(B1, B2) end.
