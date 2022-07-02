Represents a single (possibly empty) pair of car and cdr.

State chart:
(list . block) - Lazily suspended. Block represents a list function. When forced, it consumes list and extends the pair with the relevant car and a new lazy tail.
(value . block) - Lazily suspended infinite generator. Same as list case, but value may be anything used to successively generate elements.
(nil . self) - Empty. Immutable lists should never be able to contain themselves, so this acts as a signal that this pair is empty. Needed in addition to the dedicated ConsEmpty class because if the pair is lazy, we may not know it's empty and so can't swap it out for ConsEmpty by the time other objects get a reference to it.
(* . *) - A normal cons cell.