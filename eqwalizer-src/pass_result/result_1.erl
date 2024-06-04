-module(result_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Error, Value) :: {'$#result:result.ok',
                               Value} |
                              {'$#result:result.err', Error}.
-export_type([result/2]).
-spec with_default(A, result(_, A)) -> A.
with_default(_Def, {'$#result:result.ok', A}) -> A;
with_default(Def, {'$#result:result.err', _E}) -> Def.
