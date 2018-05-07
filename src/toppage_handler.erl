%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
-module(toppage_handler).

-export([init/2]).

init(Req0, Opts) ->
  cowboy_req:push(<<"/app.css">>, #{<<"accept">> => <<"text/css">>}, Req0),
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/html">>
	}, <<"<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"utf-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <meta name=\"description\" content=\"\">
    <meta name=\"author\" content=\"\">

    <title>Hello Snowday!</title>
    <link rel=\"stylesheet\" href=\"./app.css\")\">
  </head>
	<body>
	  <p>
      This is a sample web page.
    </p>
	</body>
</html
	">>, Req0),
	{ok, Req, Opts}.
