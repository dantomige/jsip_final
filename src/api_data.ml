open Cohttp
open Async

let f () =
  let _ =
    Uri.of_string
      "https://alpha-vantage.p.rapidapi.com/query?interval=5min&function=TIME_SERIES_INTRADAY&symbol=MSFT&datatype=csv&output_size=compact"
  in
  let _ =
    Uri.of_string "https://coingecko.p.rapidapi.com/coins/aave-link/tickers"
  in
  let uri_coin_ethereum =
    Uri.of_string "https://coingecko.p.rapidapi.com/coins/ethereum/tickers"
  in
  let headers =
    Header.add_list
      (Header.init ())
      [ ( "X-RapidAPI-Key"
        , "7dbd7494f5msh4206d6f82504095p12a663jsne6c530313089" )
      ; "X-RapidAPI-Host", "alpha-vantage.p.rapidapi.com"
      ]
  in
  let%bind _res, body_stream =
    Cohttp_async.Client.get ~headers uri_coin_ethereum
  in
  let%bind response = Cohttp_async.Body.to_string body_stream in
  print_endline response;
  return ()
;;

(* Do stuff with the result *)

let command =
  Command.async
    ~summary:
      "Send off an rpc to create and join a game and then randomly places \
       pieces using web socket rpc"
    (let%map_open.Command () = return () in
     fun () -> f ())
;;

let () = Command_unix.run command
