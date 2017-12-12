tests-eager
testCount
	self assert: (zero count: [  ]) equals: 0.
	self assert: (two count: [ :x | true ]) equals: 2.
	self assert: (two count: [ :x | false ]) equals: 0.
	self assert: (four count: [ :x | x < 3 ]) equals: 2.
	self reset.
	self assert: ((four select: [ :x | 1 < x ]) count: [ :x | x < 3 ]) equals: 1.
	self reset.
	self assert: ((four collect: [ :x | x + 1 ]) count: [ :x | x < 3 ]) equals: 1