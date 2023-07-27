open! Core
open! Jsip_final_src
open! Jsip_final_src.Types.Crypto

let _bitcoin_data = Fetch_data.get_data Bitcoin
let ethereum_data = Fetch_data.get_data Ethereum
let _xrp_data = Fetch_data.get_data XRP;;

print_s [%message (ethereum_data : Types.Total_Data.t)]
