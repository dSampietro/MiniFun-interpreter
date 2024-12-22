let () =
  if Array.length Sys.argv != 2 then
    Printf.eprintf "Argument MiniFun-program is needed"
  else
    let filename = Sys.argv.(1) in
    let input_file = open_in filename in

    let lexbuf = Lexing.from_channel input_file in
    (* analyze_lexing lexbuf; *)
    try
      let program = (Lib.MfParser.prg Lib.MfLexer.read lexbuf) in
      let env = Lib.Environment.new_env () in
      let res = Lib.MiniFun_interpreter.eval env program in
      Printf.printf "%s\n" (Lib.Environment.string_of_value res); 
      close_in input_file
    with
    | Lib.MfParser.Error ->
      close_in input_file;
      let pos = lexbuf.lex_curr_p in
      Printf.eprintf "Parse error at line %d, column %d: unexpected token\n"
        pos.pos_lnum
        (pos.pos_cnum - pos.pos_bol + 1);
      exit 1

    | Parsing.Parse_error ->
        close_in input_file;
        let pos = lexbuf.lex_curr_p in
        Printf.eprintf "Parse error at line %d, column %d\n"
          pos.pos_lnum
          (pos.pos_cnum - pos.pos_bol + 1)

    | exn -> close_in input_file; Printf.eprintf "Unexpected error: %s\n" (Printexc.to_string exn);
    