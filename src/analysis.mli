exception ModulusOfNonInteger
exception ModulusOfMakeVector
exception ModulusOfBroadcast
exception ModulusOfRamp

val reduce_expr_modulo : Ir.expr -> int -> int option

val fold_children_in_expr :
  (Ir.expr -> 'a) -> ('a -> 'a -> 'a) -> 'a -> Ir.expr -> 'a
val fold_children_in_stmt :
  (Ir.expr -> 'a) -> (Ir.stmt -> 'a) -> ('a -> 'a -> 'a) -> Ir.stmt -> 'a
val expr_contains_expr : Ir.expr -> Ir.expr -> bool
val mutate_children_in_expr : (Ir.expr -> Ir.expr) -> Ir.expr -> Ir.expr
val mutate_children_in_stmt :
  (Ir.expr -> Ir.expr) -> (Ir.stmt -> Ir.stmt) -> Ir.stmt -> Ir.stmt
val subs_stmt : Ir.expr -> Ir.expr -> Ir.stmt -> Ir.stmt
val subs_expr : Ir.expr -> Ir.expr -> Ir.expr -> Ir.expr
val subs_name_stmt : Ir.buffer -> Ir.buffer -> Ir.stmt -> Ir.stmt
val subs_name_expr : Ir.buffer -> Ir.buffer -> Ir.expr -> Ir.expr
val prefix_name_expr : string -> Ir.expr -> Ir.expr
val prefix_name_stmt : string -> Ir.stmt -> Ir.stmt

