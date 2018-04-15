%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
-module(toppage_handler).

-export([init/2]).

init(Req0, Opts) ->
  Req1 = cowboy_req:inform(103, #{<<"link">> => <<"</style.css>; rel=preload; as=style">>}, Req0),
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/html">>,
    <<"link">> => <<"</style.css>; rel=preload; as=style">>
	}, [[[[<<>> | <<>> ] | <<>>] | [ <<>> ]], <<"
	  <p>
      This is a sample web page.
    </p>
	">>], Req1),
	{ok, Req, Opts}.
