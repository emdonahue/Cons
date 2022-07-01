laziness
forceOne
	self isLazy ifTrue: [ cdr value: self value: car value: cdr ].