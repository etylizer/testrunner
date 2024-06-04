-module(lc_warnings_1).
-compile([nowarn_export_all, export_all]).

close(Fs) ->
    %% There should be a warning since we ignore a potential
    %% {error,Error} return from file:close/1.
    [file:close(F) || F <- Fs],

    %% No warning because the type of unmatched return will be ['ok']
    %% (which is a list of a simple type).
    [ok = file:close(F) || F <- Fs],

    %% Suppressed.
    _ = [file:close(F) || F <- Fs],
    ok.
