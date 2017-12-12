tests-lazy
testCollect
	self assert: (zero collect: [ :x | x ]) equals: zero.
	self assert: (four collect: [ :x | x ]) equals: fourCopy.
	self reset.
	self assert: (odds collect: [ :x | x + 1 ]) equals: evens.
	self assert: ((four select: [ :x | x odd ]) collect: [ :x | x + 1 ]) equals: evens