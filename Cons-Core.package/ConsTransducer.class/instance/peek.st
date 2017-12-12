subclassresponsibility
peek
	"Return the first element of the list. Equivalent to lisp #car, but not a user-facing API because this does not consume any laziness. Sync will always be called before #peek by elements of the linking protocol."
	^ transducer peek