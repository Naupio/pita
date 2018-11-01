%%%-------------------------------------------------------------------
%% @doc ta_hook public API
%% @end
%%%-------------------------------------------------------------------

-module(ta_hook_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    ta_hook_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================