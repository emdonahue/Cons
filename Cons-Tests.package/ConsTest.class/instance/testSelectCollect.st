tests-lazy
testSelectCollect
	self assert: ((four select: [ :x | x odd ]) collect: [ :x | x + 1 ]) equals: evens