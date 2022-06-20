testing
isEmpty
	self forceOne.
	^ self == cdr and: nil == car.