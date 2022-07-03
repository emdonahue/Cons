tests-lazy
testSort
	self assert: zero sort equals: zero.
	self assert: one sort equals: one.
	self assert: two sort equals: two.
	self assert: #(2 1) asCons sort equals: two.
	self assert: four sort equals: four.
	self assert: #(4 3 2 1) asCons sort equals: four.
	