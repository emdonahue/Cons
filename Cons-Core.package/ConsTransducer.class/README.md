Represents a list function that statefully processes a list for speed. Is used internally by eager functions but should never be referenced outside the internal list functions.

Internal states:
(* * nil) - Empty
(self list block) - Lazy
(* list block) - Eager