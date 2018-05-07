%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
-module(css_handler).

-export([init/2]).

init(Req0, Opts) ->
  % Req1 = cowboy_req:push(<<"/app/app.css">>, #{<<"accept">> => <<"text/css">>}, Req0,  #{port => 443}),
  % Req1 = cowboy_req:inform(103, #{<<"link">> => <<"</style.css>; rel=preload; as=style">>}, Req0),
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/css">>
	}, [<<"body{
      color: green;
      background-color: pink;
      font-size: 24px;
    }
	">>], Req0),
	{ok, Req, Opts}.
