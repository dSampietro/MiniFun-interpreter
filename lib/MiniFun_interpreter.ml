let rec eval (env: Environment.env) (e: MiniFun.exp) : Environment.value = match e with
  | Var(id) -> (
    match Environment.lookup env id with
      | Some(value) -> value
      | None -> failwith ("Variable " ^ id ^ " not found")
    )

  | Aval(n) -> IntVal(n)
  | Bval(b) -> BoolVal(b)


  | Op(op, a, b) -> (
    match op with
    | Plus ->  (
      match (eval env a), (eval env b) with
        | (IntVal a, IntVal b) -> IntVal(a + b)
        | _ -> failwith "Type error")
    | Minus -> (
      match (eval env a), (eval env b) with
        | (IntVal a, IntVal b) -> IntVal(a - b)
        | _ -> failwith "Type error")
    | Times -> (
      match (eval env a), (eval env b) with
        | (IntVal a, IntVal b) -> IntVal(a * b)
        | _ -> failwith "Type error")
    | Minor -> (
      match (eval env a), (eval env b) with
        | (IntVal a, IntVal b) -> BoolVal(a < b)
        | _ -> failwith "Type error")
    | And -> (
      match (eval env a), (eval env b) with
        | (BoolVal a, BoolVal b) -> BoolVal(a && b)
        | _ -> failwith "Type error"
      )
    (* | _ -> failwith "Not a valid operator" *)
    )
  | Not(e) -> (
    match eval env e with
    | BoolVal(a) -> BoolVal(not a)
    | _ -> failwith "The argument should be a boolean expression"
  )  


  | IfElse(cond, t1, t2) -> (
    match eval env cond with
      | BoolVal(true) -> eval env t1
      | BoolVal(false) -> eval env t2
      | _ -> failwith "Type error in condition"
    )
  
  | Fun(arg, body) -> (
    match arg with
    | Var(_) -> Closure(arg, body, env)
    | _ -> failwith "Invalid expression"
    )

  | Let(x, t1, t2) -> 
    (match x with
    | Var(s) ->
      (
      let t1_eval = eval env t1 in
      let env1 = Environment.add env s t1_eval
      in eval env1 t2
      )
    | _ -> failwith "Invalid expression")

  | LetFun(f, x, t1, t2) -> 
    (match x with
    | Var(_) -> (
      let recEnv = Environment.add env f (RecClosure(f, x, t1, env))
      in eval recEnv t2
      )
    | _ -> failwith "Invalid argument for LetFun")

  | App(t1, t2) -> (
      match eval env t1 with
        | Closure(Var(arg), body, env1) -> 
          (
          let t2' = eval env t2 in
          let env2 = Environment.add env1 arg t2'
          in eval env2 body
          )
        | _ -> failwith "First term is not a function"
    )
 (* | _ -> failwith "Not a valid expression"*)