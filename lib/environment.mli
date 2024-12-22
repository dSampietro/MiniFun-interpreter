
type value =
  | IntVal of int
  | BoolVal of bool
  | Closure of string * MiniFun.exp * MiniFun.exp * env

  and env


(* Environment utils *)
val new_env: unit -> env
val lookup: env -> string -> value option
val add: env -> string -> value -> env

val string_of_value: value -> string
