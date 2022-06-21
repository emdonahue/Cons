laziness
consForce
	ABBench a: [
	self isLazy ifTrue: [ ^ cdr value: self value: car ].
	] b: [
		self isLazy ifTrue: [ car ifEmpty: [ ^ self empty ] ifNotEmpty: [ cdr := (cdr value: self value: car) cons: cdr. ] ].
	]