{
    open MfParser
    exception LexingError of string
}

(* regexp *)
let whitespace = [' ' '\t']+ | '\r' | '\n' | "\r\n"
let integer = '-'?['0' - '9']['0' - '9']*
let bool = "true" | "false"
let id = ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']*

rule read = parse
| "fun"     {FUN}
| "let"     {LET}
| "letfun"  {LETFUN}
| "in"      {IN}
| "=>"      {ARROW}

| "+"       {PLUS}
| "-"       {MINUS}
| "*"       {TIMES}
| "<"       {MINOR}
| "not"     {NOT}
| "and"     {AND}
| "="       {ASSIGN}
| "("       {OPEN_PAR}
| ")"       {CLOSE_PAR}

| "if"      {IF}
| "then"    {THEN}
| "else"    {ELSE}
| whitespace {read lexbuf}
| integer {INT (int_of_string (Lexing.lexeme lexbuf))}
| bool {BOOL (bool_of_string (Lexing.lexeme lexbuf))}
| id {VAR (Lexing.lexeme lexbuf)}
| eof {EOF}

| _ as c { raise (LexingError (Printf.sprintf "Unexpected character '%c' at position %d" c (Lexing.lexeme_start lexbuf))) }