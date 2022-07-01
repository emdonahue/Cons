tests-lazy
testReverse
	self assert: four reverse reverse equals: fourCopy.
	self assert: three reverse equals: (Cons with: 3 with: 2 with: 1).
	self assert: ((four select: [:x | false]) reverse) equals: zero.
	self assert:  zero reversed equals: ((four select: [:x | false]) reverse) .
	self assert: four reverse cdr reverse equals: three.