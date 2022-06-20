tests-lazy
testCollect
	self assert: (zero collect: [ :x | x ]) equals: zero.
	self assert: (four collect: [ :x | x ]) equals: fourCopy.
	self assert: (odds collect: [ :x | x + 1 ]) equals: evens.