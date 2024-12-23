(* Exps of the language*)
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
  | Fun of exp * exp
  
  | App of exp * exp
  | Op of operator * exp * exp
  | Not of exp
  | IfElse of exp * exp * exp

  | Let of exp * exp * exp
  | LetFun of string * exp * exp * exp 
  
(* Converts an operator to a string *)
let string_of_operator (op: operator): string = 
  match op with
  | Plus -> "+"
  | Minus -> "-"
  | Times -> "*"
  | Minor -> "<"
  | And -> "&&"

(* Converts an expression to a string *)
let rec string_of_exp (exp: exp) : string = 
  match exp with
  | Var(x) -> x
  | Aval(i) -> string_of_int i
  | Bval(b) -> string_of_bool b
  | Fun(arg, body) -> 
      "(fun " ^ string_of_exp arg ^ " => " ^ string_of_exp body ^ ")"
  | App(e1, e2) -> 
      "(" ^ string_of_exp e1 ^ " " ^ string_of_exp e2 ^ ")"
  | Op(op, e1, e2) -> 
      "(" ^ string_of_exp e1 ^ " " ^ string_of_operator op ^ " " ^ string_of_exp e2 ^ ")"
  | Not(e) -> 
      "(not " ^ string_of_exp e ^ ")"
  | IfElse(cond, e1, e2) -> 
      "(if " ^ string_of_exp cond ^ " then " ^ string_of_exp e1 ^ " else " ^ string_of_exp e2 ^ ")"
  | Let(Var(x), e1, e2) -> 
      "(let " ^ x ^ " = " ^ string_of_exp e1 ^ " in " ^ string_of_exp e2 ^ ")"
  | LetFun(f, Var(arg), body, e2) -> 
      "(letfun " ^ f ^ " " ^ arg ^ " = " ^ string_of_exp body ^ " in " ^ string_of_exp e2 ^ ")"
  | _ -> failwith "Invalid expression for Let or LetFun"
