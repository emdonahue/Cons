laziness
consForce
	self isLazy ifTrue: [ block value: self value: cdr value: block ].
	"self isLazy ifTrue: [ cdr ifEmpty: [ ^ self empty ]. cdr := block value: self value: cdr ]."