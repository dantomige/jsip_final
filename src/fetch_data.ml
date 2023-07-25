open Core

let get_curr_price content : string =
  let open Soup in
  parse contents
  $$ "priceValue"
  |> 


;;
