laziness
forceOne
	self isLazy ifTrue: [ block value: self value: cdr value: block ].