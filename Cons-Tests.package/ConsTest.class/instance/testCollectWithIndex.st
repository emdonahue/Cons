tests-lazy
testCollectWithIndex
	self assert: (zero collectWithIndex: [ :x :i | x ]) equals: zero.
	self assert: (four reversed collectWithIndex: [ :x :i | i ]) equals: fourCopy.
	self assert: (four reversed collectWithIndex: [ :x :i | x ]) equals: four reversed.