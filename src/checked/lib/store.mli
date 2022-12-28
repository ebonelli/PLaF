type 'a t

val empty_store : int -> 'a -> 'a t

val get_size : 'a t -> int
  
val new_ref : 'a t -> 'a -> int

val deref: 'a t -> int -> 'a Ds.ea_result

val set_ref : 'a t -> int -> 'a -> unit Ds.ea_result

val string_of_store : ('a -> string) -> 'a t -> string
