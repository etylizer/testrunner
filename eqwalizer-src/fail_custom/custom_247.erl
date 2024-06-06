-module(custom_247).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type reclist3(A, B) :: [{A, B} | reclist3(B, A)].
-spec flatten_reclist3_neg(reclist3(A, B)) -> [{A, B}].
flatten_reclist3_neg(X) -> lists:flatten(X).
