(* Exps of the language*)
(* binary*)
type operator = 
  | Plus
  | Minus
  | Times
  | Minor
  | And

type exp =
  | Var of string
  | Aval of int
  | Bval of bool
  | Fun of string * exp * exp
  
  | App of exp * exp
  | Op of operator * exp * exp
  | Not of exp
  | IfElse of exp * exp * exp

  | Let of exp * exp * exp
  | LetFun of exp * exp * exp * exp