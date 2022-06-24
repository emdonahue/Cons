laziness
car: aCar cdr: aCdr block: aBlock
	"Sets state to eager with a lazy tail."
	car := aCar.
	cdr := aCdr.
	block := aBlock.