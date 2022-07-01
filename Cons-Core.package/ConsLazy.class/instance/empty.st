requirements
empty
	"Set internal flags to empty but return dedicated empty object which should be used by everyone without a reference to this pair."
	car := nil.
	cdr := self.
	^ Cons empty.