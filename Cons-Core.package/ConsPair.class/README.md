Represents a single (possibly empty) pair of car and cdr.

Internal states:
(list . block) - Lazily suspended. Block represents a list function. When forced, it consumes list and extends the pair.
(* . self) - Immutable lists should never be able to contain themselves, so this acts as a signal that this pair is empty. Needed in addition to the dedicated ConsEmpty class because if the pair is lazy, we may not know it's empty and so can't swap it out for ConsEmpty until other objects already have a reference to it.
(* . *) - A normal cons cell.