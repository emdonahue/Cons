tests-eager
testIndexOf
	self assert: (four indexOf: 1) equals: 1.
	self assert: (four indexOf: 4) equals: 4.
	self assert: (four indexOf: 5) equals: 0.
	self assert: (evens indexOf: 4) equals: 2.
	self assert: ((four select: [ :x | 1 < x ]) indexOf: 3) equals: 2.
	self assert: ((four collect: [ :x | x + 1 ]) indexOf: 3) equals: 2.