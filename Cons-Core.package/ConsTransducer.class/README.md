Represents a list function that statefully processes a list for speed. Is used internally by eager functions but should never be referenced outside the internal list functions.

State chart:
(* * nil) - Eager head, eager tail. Car and cdr are like car and cdr of a ConsPair.
(nil self nil) - Empty.
(self list block) - Lazy head.
(* list block) - Eager head, lazy tail.