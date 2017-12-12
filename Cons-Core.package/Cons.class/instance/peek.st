linking
peek
	"Returns first element of the list (like car) but ONLY if list is guaranteed to be non lazy with respect to its first cons. These guarantees are made by the rest of the linking protocol, and this method should be used in conjunction with them."

	self subclassResponsibility