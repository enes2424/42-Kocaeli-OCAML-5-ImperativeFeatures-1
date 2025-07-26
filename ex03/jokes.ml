let read_jokes_from_file filename =
  let file = open_in filename in
  let rec read_lines list =
    try
      let line = input_line file in
      read_lines (line :: list)
    with
    | End_of_file -> 
        close_in file;
        List.rev list
  in
  let lines = read_lines [] in
  Array.of_list lines

let () =
  let args = Sys.argv in
  let argc = Array.length args in
  if (argc = 2) then
    try
      let filename = args.(1) in
      let jokes = read_jokes_from_file filename in
      Random.self_init ();
      print_endline jokes.(Random.int (Array.length jokes))
    with
    | _ -> ()
