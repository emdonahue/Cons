laziness
isEmpty
	self consForce.
	^ block isNil & cdr isEmpty.