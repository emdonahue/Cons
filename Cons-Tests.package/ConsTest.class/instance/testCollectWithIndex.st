tests-lazy
testCollectWithIndex
	self assert: (zero collectWithIndex: [ :x :i | x ]) equals: zero.
	self assert: (four collectWithIndex: [ :x :i | i ]) equals: fourCopy.
	self reset.	
	self assert: (four collectWithIndex: [ :x :i | i ]) equals: fourCopy.