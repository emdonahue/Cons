tests-eager
testReduce
	self should: [ zero reduce: [ :x :y | x + y ] ] raise: Error.
	self assert: (one reduce: [ :x :y | x + y ]) equals: 1.
	self assert: (two reduce: [ :x :y | x + y ]) equals: 3.
	self assert: (four reduce: [ :x :y | x + y ]) equals: 10.
	self assert: ((four select: [ :x | 1 < x ]) reduce: [ :x :y | x + y ]) equals: 9.
	self assert: ((four collect: [ :x | x + 1 ]) reduce: [ :x :y | x + y ]) equals: 14