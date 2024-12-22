module StringMap = Map.Make(String)

type value =
  | IntVal of int
  | BoolVal of bool
  | Closure of string * MiniFun.exp * MiniFun.exp * env

  and env = value StringMap.t


(* Environment utils *)
let new_env () : env = StringMap.empty
let lookup (e: env) (id: string) : value option = 
  StringMap.find_opt id e

let add (e: env) (id: string) (v: value) : env =
  StringMap.add id v e

let string_of_value (v: value): string =
  match v with
  | IntVal(i) -> string_of_int i
  | BoolVal(b) -> string_of_bool b
  | Closure(fname, _, _, _) -> "function " ^ fname
