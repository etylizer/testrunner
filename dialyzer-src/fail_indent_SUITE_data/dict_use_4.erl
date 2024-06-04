-module(dict_use_4).
-compile([nowarn_export_all, export_all]).

w3() ->
  try dict:new() of
    [] -> nil;
    42 -> weird
  catch
    _:_ -> exception
  end.