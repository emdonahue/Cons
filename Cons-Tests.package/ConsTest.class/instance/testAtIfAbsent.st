tests-eager
testAtIfAbsent
	self assert: (zero at: 0 ifAbsent: 6) equals: 6.
	self assert: (zero at: 1 ifAbsent: 6) equals: 6.
	self assert: (one at: 0 ifAbsent: 6) equals: 6.
	self assert: (one at: 1 ifAbsent: 6) equals: 1.
	self assert: (one at: 2 ifAbsent: 6) equals: 6.
	self assert: (two at: 1 ifAbsent: 6) equals: 1.
	self assert: (two at: 2 ifAbsent: 6) equals: 2.
	self assert: (four at: 4 ifAbsent: 6) equals: 4.
	self assert: ((four select: [ :x | 1 < x ]) at: 4 ifAbsent: 6) equals: 6.
	self assert: ((four select: [ :x | 1 < x ]) at: 3 ifAbsent: 6) equals: 4.
	self assert: ((four collect: [ :x | x + 1 ]) at: 4 ifAbsent: 6) equals: 5.