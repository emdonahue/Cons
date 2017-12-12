tests-lazy
testDrop
	self assert: (four drop: 2) equals: threeFour.
	self reset.
	self assert: (four drop: 0) equals: fourCopy.
	self reset.
	self assert: (four drop: -1) equals: fourCopy.
	self reset.
	self assert: (four drop: 4) equals: zero.
	self reset.
	self assert: (four drop: 5) equals: zero