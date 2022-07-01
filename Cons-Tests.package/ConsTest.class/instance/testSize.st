tests-eager
testSize
	self assert: four size equals: 4.
	self assert: evens size equals: 2.
	self assert: one size equals: 1.
	self assert: zero size equals: 0.
	self assert: (four select: [ :x | 1 < x ]) size equals: 3.
	self assert: (four collect: [ :x | x + 1 ]) size equals: 4.