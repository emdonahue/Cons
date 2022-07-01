laziness
car: aCar cdr: aCdr block: aBlock

	car := aCar.
	cdr := self class lazy: aCdr cons: aBlock