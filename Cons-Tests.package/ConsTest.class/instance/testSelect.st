tests-lazy
testSelect
	| selected |
	self assert: (zero select: [ :x | true ]) equals: zero.
	self assert: (four select: [ :x | true ]) equals: fourCopy.
	self reset.
	self assert: (four select: [ :x | false ]) equals: zero.
	self reset.
	self assert: (four select: [ :x | x odd ]) equals: odds.
	 self reset.
	selected := four select: [ :x | x < 4 ].
	self assert: selected equals: three.
	self reset.
	self assert: selected equals: three. "Test that transducers copy themselves before consumption so that they are idempotent."
	self reset.
	selected := (four select: [ :x | x < 4 ]) select: [ :x | x < 4 ].
	self assert: selected equals: three.
	self reset.
	self assert: selected equals: three