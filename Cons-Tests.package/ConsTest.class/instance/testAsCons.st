tests
testAsCons
	self assert: (1 cons: 2) asCons equals: pair.
	self assert: #(1 2 3 4) asCons equals: fourCopy.
	self assert: #(1 1) asSet asCons equals: one.
	self assert: zero asCons equals: zero.
