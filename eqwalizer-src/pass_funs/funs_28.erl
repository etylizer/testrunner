-module(funs_28).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lmap_aa(fun((A) -> A), [A]) -> [A].
lmap_aa(_F, _XS) -> [].
