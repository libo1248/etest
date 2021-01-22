%%%-------------------------------------------------------------------
%% @doc etest public API
%% @end
%%%-------------------------------------------------------------------

-module(etest_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    etest_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
