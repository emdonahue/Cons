testing
ifNotEmpty: aBlock
	^ self ifEmpty: self class empty ifNotEmpty: aBlock