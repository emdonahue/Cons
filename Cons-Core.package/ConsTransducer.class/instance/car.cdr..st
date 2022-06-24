laziness
car: aCar cdr: aCdr
	"Sets state to eager with an eager tail."
	car := aCar.
	cdr := aCdr.
	block := nil.