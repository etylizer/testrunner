-module(tycheck_simple_pass_34).
-compile([nowarn_export_all, export_all]).

% Catch
-spec catch_01() -> any().
catch_01() -> catch (2/10).
