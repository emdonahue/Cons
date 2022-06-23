laziness
consForce
	"ABBench a: [
	self isLazy ifTrue: [ ^ cdr value: self value: car ].
	] b: ["
	"Pass in self to edit laziness state, car to supply the data, and cdr the block to suspend further."
	self isLazy ifTrue: [ cdr value: self value: car value: cdr ].
	"self isLazy ifTrue: [ car ifEmpty: [ ^ self empty ] ifNotEmpty: [ cdr := (cdr value: self value: car) cons: cdr. ] ]."