
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | VAR of (
# 12 "lib/MfParser.mly"
       (string)
# 15 "lib/MfParser.ml"
  )
    | TIMES
    | THEN
    | PLUS
    | OPEN_PAR
    | NOT
    | MINUS
    | MINOR
    | LETFUN
    | LET
    | INT of (
# 10 "lib/MfParser.mly"
       (int)
# 29 "lib/MfParser.ml"
  )
    | IN
    | IF
    | FUN
    | EOF
    | ELSE
    | CLOSE_PAR
    | BOOL of (
# 11 "lib/MfParser.mly"
       (bool)
# 40 "lib/MfParser.ml"
  )
    | ASSIGN
    | ARROW
    | AND
  
end

include MenhirBasics

# 1 "lib/MfParser.mly"
  
    open MiniFun    

# 54 "lib/MfParser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_prg) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: prg. *)

  | MenhirState02 : (('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_state
    (** State 02.
        Stack shape : OPEN_PAR.
        Start symbol: prg. *)

  | MenhirState04 : (('s, _menhir_box_prg) _menhir_cell1_NOT, _menhir_box_prg) _menhir_state
    (** State 04.
        Stack shape : NOT.
        Start symbol: prg. *)

  | MenhirState06 : (('s, _menhir_box_prg) _menhir_cell1_LETFUN _menhir_cell0_VAR, _menhir_box_prg) _menhir_state
    (** State 06.
        Stack shape : LETFUN VAR.
        Start symbol: prg. *)

  | MenhirState07 : (('s, _menhir_box_prg) _menhir_cell1_LET, _menhir_box_prg) _menhir_state
    (** State 07.
        Stack shape : LET.
        Start symbol: prg. *)

  | MenhirState09 : (('s, _menhir_box_prg) _menhir_cell1_IF, _menhir_box_prg) _menhir_state
    (** State 09.
        Stack shape : IF.
        Start symbol: prg. *)

  | MenhirState12 : ((('s, _menhir_box_prg) _menhir_cell1_IF, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 12.
        Stack shape : IF trm.
        Start symbol: prg. *)

  | MenhirState14 : (((('s, _menhir_box_prg) _menhir_cell1_IF, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 14.
        Stack shape : IF trm trm.
        Start symbol: prg. *)

  | MenhirState17 : ((('s, _menhir_box_prg) _menhir_cell1_LET, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 17.
        Stack shape : LET trm.
        Start symbol: prg. *)

  | MenhirState19 : (((('s, _menhir_box_prg) _menhir_cell1_LET, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 19.
        Stack shape : LET trm trm.
        Start symbol: prg. *)

  | MenhirState22 : ((('s, _menhir_box_prg) _menhir_cell1_LETFUN _menhir_cell0_VAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 22.
        Stack shape : LETFUN VAR trm.
        Start symbol: prg. *)

  | MenhirState24 : (((('s, _menhir_box_prg) _menhir_cell1_LETFUN _menhir_cell0_VAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 24.
        Stack shape : LETFUN VAR trm trm.
        Start symbol: prg. *)

  | MenhirState30 : ((('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_FUN _menhir_cell0_VAR, _menhir_box_prg) _menhir_state
    (** State 30.
        Stack shape : OPEN_PAR FUN VAR.
        Start symbol: prg. *)

  | MenhirState34 : ((('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 34.
        Stack shape : OPEN_PAR trm.
        Start symbol: prg. *)

  | MenhirState37 : ((('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 37.
        Stack shape : OPEN_PAR trm.
        Start symbol: prg. *)

  | MenhirState40 : ((('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 40.
        Stack shape : OPEN_PAR trm.
        Start symbol: prg. *)

  | MenhirState43 : ((('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 43.
        Stack shape : OPEN_PAR trm.
        Start symbol: prg. *)

  | MenhirState47 : ((('s, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_state
    (** State 47.
        Stack shape : OPEN_PAR trm.
        Start symbol: prg. *)


and ('s, 'r) _menhir_cell1_trm = 
  | MenhirCell1_trm of 's * ('s, 'r) _menhir_state * (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 152 "lib/MfParser.ml"
)

and ('s, 'r) _menhir_cell1_FUN = 
  | MenhirCell1_FUN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LETFUN = 
  | MenhirCell1_LETFUN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OPEN_PAR = 
  | MenhirCell1_OPEN_PAR of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_VAR = 
  | MenhirCell0_VAR of 's * (
# 12 "lib/MfParser.mly"
       (string)
# 177 "lib/MfParser.ml"
)

and _menhir_box_prg = 
  | MenhirBox_prg of (
# 14 "lib/MfParser.mly"
       (MiniFun.exp)
# 184 "lib/MfParser.ml"
) [@@unboxed]

let _menhir_action_01 =
  fun t ->
    (
# 25 "lib/MfParser.mly"
                (t)
# 192 "lib/MfParser.ml"
     : (
# 14 "lib/MfParser.mly"
       (MiniFun.exp)
# 196 "lib/MfParser.ml"
    ))

let _menhir_action_02 =
  fun id ->
    (
# 28 "lib/MfParser.mly"
                (Var(id))
# 204 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 208 "lib/MfParser.ml"
    ))

let _menhir_action_03 =
  fun i ->
    (
# 29 "lib/MfParser.mly"
                (Aval(i))
# 216 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 220 "lib/MfParser.ml"
    ))

let _menhir_action_04 =
  fun b ->
    (
# 30 "lib/MfParser.mly"
                (Bval(b))
# 228 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 232 "lib/MfParser.ml"
    ))

let _menhir_action_05 =
  fun t ->
    (
# 32 "lib/MfParser.mly"
                                (t)
# 240 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 244 "lib/MfParser.ml"
    ))

let _menhir_action_06 =
  fun t1 t2 ->
    (
# 34 "lib/MfParser.mly"
                                                 (Op(Plus, t1, t2))
# 252 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 256 "lib/MfParser.ml"
    ))

let _menhir_action_07 =
  fun t1 t2 ->
    (
# 35 "lib/MfParser.mly"
                                                 (Op(Minus, t1, t2))
# 264 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 268 "lib/MfParser.ml"
    ))

let _menhir_action_08 =
  fun t1 t2 ->
    (
# 36 "lib/MfParser.mly"
                                                 (Op(Times, t1, t2))
# 276 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 280 "lib/MfParser.ml"
    ))

let _menhir_action_09 =
  fun t1 t2 ->
    (
# 37 "lib/MfParser.mly"
                                                 (Op(And, t1, t2))
# 288 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 292 "lib/MfParser.ml"
    ))

let _menhir_action_10 =
  fun t1 t2 ->
    (
# 38 "lib/MfParser.mly"
                                                 (Op(Minor, t1, t2))
# 300 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 304 "lib/MfParser.ml"
    ))

let _menhir_action_11 =
  fun t ->
    (
# 39 "lib/MfParser.mly"
                                                 (Not(t))
# 312 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 316 "lib/MfParser.ml"
    ))

let _menhir_action_12 =
  fun cond t1 t2 ->
    (
# 41 "lib/MfParser.mly"
                                             (IfElse(cond, t1, t2))
# 324 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 328 "lib/MfParser.ml"
    ))

let _menhir_action_13 =
  fun f t ->
    (
# 44 "lib/MfParser.mly"
                                                 (Fun("", f, t))
# 336 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 340 "lib/MfParser.ml"
    ))

let _menhir_action_14 =
  fun arg f t ->
    (
# 45 "lib/MfParser.mly"
                                        (Let(f, arg, t))
# 348 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 352 "lib/MfParser.ml"
    ))

let _menhir_action_15 =
  fun arg f t1 t2 ->
    (
# 46 "lib/MfParser.mly"
                                                    (LetFun(f, arg, t1, t2))
# 360 "lib/MfParser.ml"
     : (
# 15 "lib/MfParser.mly"
      (MiniFun.exp)
# 364 "lib/MfParser.ml"
    ))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | ARROW ->
        "ARROW"
    | ASSIGN ->
        "ASSIGN"
    | BOOL _ ->
        "BOOL"
    | CLOSE_PAR ->
        "CLOSE_PAR"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | FUN ->
        "FUN"
    | IF ->
        "IF"
    | IN ->
        "IN"
    | INT _ ->
        "INT"
    | LET ->
        "LET"
    | LETFUN ->
        "LETFUN"
    | MINOR ->
        "MINOR"
    | MINUS ->
        "MINUS"
    | NOT ->
        "NOT"
    | OPEN_PAR ->
        "OPEN_PAR"
    | PLUS ->
        "PLUS"
    | THEN ->
        "THEN"
    | TIMES ->
        "TIMES"
    | VAR _ ->
        "VAR"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_50 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let t = _v in
          let _v = _menhir_action_01 t in
          MenhirBox_prg _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_02 id in
      _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_trm : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_50 _menhir_stack _v _tok
      | MenhirState47 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState43 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState40 ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState37 ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState02 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState30 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState04 ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState24 ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState22 ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState06 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState19 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState17 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState14 ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState12 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState09 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_48 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_09 t1 t2 in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_44 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_10 t1 t2 in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_41 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_07 t1 t2 in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_38 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_06 t1 t2 in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_35 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_08 t1 t2 in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState34 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState37 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MINUS ->
          let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState40 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MINOR ->
          let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState43 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_05 t in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | AND ->
          let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState47 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState02 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | OPEN_PAR ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LETFUN ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FUN ->
          let _menhir_stack = MenhirCell1_FUN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ARROW ->
                  let _menhir_s = MenhirState30 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | VAR _v ->
                      _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | OPEN_PAR ->
                      _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | NOT ->
                      _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LETFUN ->
                      _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LET ->
                      _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT _v ->
                      _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | IF ->
                      _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | BOOL _v ->
                      _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | BOOL _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | OPEN_PAR ->
          let _menhir_s = MenhirState04 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LETFUN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _menhir_s = MenhirState06 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState07 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | OPEN_PAR ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LETFUN ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_03 i in
      _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState09 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | OPEN_PAR ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LETFUN ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prg) _menhir_state -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let b = _v in
      let _v = _menhir_action_04 b in
      _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_31 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_OPEN_PAR, _menhir_box_prg) _menhir_cell1_FUN _menhir_cell0_VAR -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_VAR (_menhir_stack, f) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_OPEN_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_13 f t in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. (ttv_stack, _menhir_box_prg) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CLOSE_PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_11 t in
          _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. (((ttv_stack, _menhir_box_prg) _menhir_cell1_LETFUN _menhir_cell0_VAR, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
      let MenhirCell1_trm (_menhir_stack, _, arg) = _menhir_stack in
      let MenhirCell0_VAR (_menhir_stack, f) = _menhir_stack in
      let MenhirCell1_LETFUN (_menhir_stack, _menhir_s) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_15 arg f t1 t2 in
      _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_23 : type  ttv_stack. (((ttv_stack, _menhir_box_prg) _menhir_cell1_LETFUN _menhir_cell0_VAR, _menhir_box_prg) _menhir_cell1_trm as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IN ->
          let _menhir_s = MenhirState24 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_LETFUN _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState22 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. (((ttv_stack, _menhir_box_prg) _menhir_cell1_LET, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_trm (_menhir_stack, _, arg) = _menhir_stack in
      let MenhirCell1_trm (_menhir_stack, _, f) = _menhir_stack in
      let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_14 arg f t in
      _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_18 : type  ttv_stack. (((ttv_stack, _menhir_box_prg) _menhir_cell1_LET, _menhir_box_prg) _menhir_cell1_trm as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IN ->
          let _menhir_s = MenhirState19 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_LET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState17 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_15 : type  ttv_stack. (((ttv_stack, _menhir_box_prg) _menhir_cell1_IF, _menhir_box_prg) _menhir_cell1_trm, _menhir_box_prg) _menhir_cell1_trm -> _ -> _ -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_trm (_menhir_stack, _, t1) = _menhir_stack in
      let MenhirCell1_trm (_menhir_stack, _, cond) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_12 cond t1 t2 in
      _menhir_goto_trm _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_13 : type  ttv_stack. (((ttv_stack, _menhir_box_prg) _menhir_cell1_IF, _menhir_box_prg) _menhir_cell1_trm as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_s = MenhirState14 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_11 : type  ttv_stack. ((ttv_stack, _menhir_box_prg) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prg) _menhir_state -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_trm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _menhir_s = MenhirState12 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | OPEN_PAR ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LETFUN ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState00 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | OPEN_PAR ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LETFUN ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
end

let prg =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prg v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
