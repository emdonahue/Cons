linking
step
	"Returns tail of the list list (like cdr) but ONLY if list is guaranteed to be non lazy with respect to the first cons. This guarantee is made by the rest of the linking protocol, and this method should be used in conjunction with them"

	self subclassResponsibility