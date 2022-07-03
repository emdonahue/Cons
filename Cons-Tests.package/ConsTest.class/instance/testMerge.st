tests-lazy
testMerge
	self assert: (zero merge: zero) equals: zero.
	self assert: (zero merge: one) equals: one.
	self assert: (one merge: zero) equals: one.
	self assert: (one merge: one) equals: #(1 1) asCons.
	self assert: (two merge: two) equals: #(1 1 2 2) asCons.
	self assert: (four merge: four) equals: #(1 1 2 2 3 3 4 4) asCons.