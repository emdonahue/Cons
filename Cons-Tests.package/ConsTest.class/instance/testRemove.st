tests-lazy
testRemove
	self assert: (zero remove: 0) equals: zero.
	self assert: (one remove: 1) equals: zero.
	self assert: (two remove: 2) equals: one.
	self assert: (four remove: 4) equals: three.
	self reset.
	self assert: ((four remove: 2) remove: 4) equals: odds