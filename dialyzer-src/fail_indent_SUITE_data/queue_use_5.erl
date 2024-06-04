-module(queue_use_5).
-compile([nowarn_export_all, export_all]).

wrong5() ->
    {F, _R} = queue:new(),
    F.