%{
    open MiniFun    
%}

(* tokens *)
%token FUN LET LETFUN IN ARROW ASSIGN EOF
%token PLUS MINUS TIMES MINOR NOT AND
%token OPEN_PAR CLOSE_PAR
%token IF THEN ELSE
%token <int> INT
%token <bool> BOOL
%token <string> VAR

%start <MiniFun.exp> prg
%type <MiniFun.exp> trm


(* %left PLUS MINUS *)
(* %left TIMES AND *)
(* %left MINOR *)
(* %right NOT *)
%%

prg:
    | t=trm EOF {t}

(*Report: to solve ambiguity use a Lisp-like syntax with parenthesis *)
trm:
    | id=VAR    {Var(id)}
    | i=INT     {Aval(i)}
    | b=BOOL    {Bval(b)}

    | OPEN_PAR t=trm CLOSE_PAR  {t}

    | OPEN_PAR t1=trm PLUS t2=trm CLOSE_PAR      {Op(Plus, t1, t2)}
    | OPEN_PAR t1=trm MINUS t2=trm CLOSE_PAR     {Op(Minus, t1, t2)}
    | OPEN_PAR t1=trm TIMES t2=trm CLOSE_PAR     {Op(Times, t1, t2)}
    | OPEN_PAR t1=trm AND t2=trm CLOSE_PAR       {Op(And, t1, t2)}
    | OPEN_PAR t1=trm MINOR t2=trm CLOSE_PAR     {Op(Minor, t1, t2)}
    | NOT OPEN_PAR t=trm CLOSE_PAR               {Not(t)}

    | IF cond=trm THEN t1=trm ELSE t2=trm    {IfElse(cond, t1, t2)}

    (* Report: ambiguity in function body solved by imposing parenthesis *)
    | OPEN_PAR FUN f=VAR ARROW t=trm CLOSE_PAR   {Fun("", f, t)}
    | LET f=trm ASSIGN arg=trm IN t=trm {Let(f, arg, t)}
    | LETFUN f=VAR arg=trm ASSIGN t1= trm IN t2=trm {LetFun(f, arg, t1, t2)}