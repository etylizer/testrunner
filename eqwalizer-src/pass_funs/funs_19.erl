-module(funs_19).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_lam_aa() -> [a].
lmap_aa(_F, _XS) -> [].
-spec lmap_aa(fun((A) -> A), [A]) -> [A].
map_lam_aa() -> lmap_aa(fun (X) -> X end, [a, a, a]).
