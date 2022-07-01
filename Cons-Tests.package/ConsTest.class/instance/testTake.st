tests-lazy
testTake
	self assert: (four take: -1) equals: zero.
	self assert: (four take: 0) equals: zero.
	self assert: (four take: 2) equals: two.
	self assert: (four take: 4) equals: fourCopy.
	self assert: (four take: 5) equals: fourCopy.