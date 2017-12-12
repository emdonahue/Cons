tests-lazy
testTake
	self assert: (four take: -1) equals: zero.
	self reset.
	self assert: (four take: 0) equals: zero.
	self reset.
	self assert: (four take: 2) equals: two.
	self reset.
	self assert: (four take: 4) equals: fourCopy.
	self reset.
	self assert: (four take: 5) equals: fourCopy.