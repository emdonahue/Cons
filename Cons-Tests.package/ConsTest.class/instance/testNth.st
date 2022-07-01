tests-lazy
testNth
	| even |
	self assert: (zero nth: 1) equals: zero.
	self assert: (zero nth: 2) equals: zero.
	self assert: (zero nth: -1) equals: zero.
	even := four nth: 2.
	self assert: even car equals: 2.
	self assert: even car equals: 2.
	self assert: (four nth: 2) equals: evens