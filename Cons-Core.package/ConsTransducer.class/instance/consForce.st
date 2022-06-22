laziness
consForce
	self isLazy ifTrue: [ cdr ifEmpty: [ ^ self empty ]. cdr := block value: self value: cdr ].