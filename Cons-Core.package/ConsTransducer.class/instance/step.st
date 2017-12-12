subclassresponsibility
step
	"Return the tail of the list. Equivalent to lisp #cdr, but not a user-facing API because this does not consume any laziness. Sync will always be called before #step by elements of the linking protocol."
	transducer := transducer step