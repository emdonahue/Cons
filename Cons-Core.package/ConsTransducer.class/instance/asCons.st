converting
asCons
	"Only handles lazy case, used to undo transduction when generator wants to use lists as atomic values. Normally the system interprets the lists as lists and transduces them, but if the programmer supplies lists as atomic value to the generator, it should not transduce them before handing them back to the programmer."
	^ Cons lazy: cdr cons: block.