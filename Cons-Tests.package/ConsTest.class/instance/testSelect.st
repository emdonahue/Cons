tests-lazy
testSelect
	self assert: (zero select: [ :x | true ]) equals: zero.
	self assert: (four select: [ :x | true ]) equals: fourCopy.
	self assert: (four select: [ :x | false ]) equals: zero.
	self assert: (four select: [ :x | x odd ]) equals: odds.
	self assert: (four select: [ :x | x < 4 ]) equals: three.
	self assert: ((four select: [ :x | x < 4 ]) select: [ :x | x < 4 ]) equals: three.