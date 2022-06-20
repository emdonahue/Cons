testing
isEmpty
	self consForce.
	^ self == cdr and: nil == car.