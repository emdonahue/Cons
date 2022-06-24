laziness
isEmpty
	self consForce.
	^ self == cdr.