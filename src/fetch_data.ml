open! Core

let get_data () =
  let curr_file = In_channel.read_lines "src/data_input.txt" in
  List.concat_map curr_file ~f:(fun s -> 
    let line = String.split s ~on:',' in
      List.fold line ~init:[] ~f:(fun curr_line 
      
      )
    );;
(* let get_prev_close link = let contents = File_fetcher.fetch_exn Remote
   ~resource:link in let open Soup in parse contents $$ "td[class]" |>
   to_list |> List.filter ~f:(fun x -> String.equal (R.attribute "class" x)
   "Ta(end) Fw(600) Lh(14px)") |> List.filter ~f:(fun x -> String.equal
   (R.attribute "data-test" x) "PREV_CLOSE-value") |> List.map ~f:(fun li ->
   texts li |> String.concat ~sep:"" |> String.strip) |> List.dedup_and_sort
   ~compare:String.compare ;; *)
