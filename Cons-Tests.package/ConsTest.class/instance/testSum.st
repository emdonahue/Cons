tests-eager
testSum
	self should: [ zero sum ] raise: Error.
	self assert: one sum equals: 1.
	self assert: two sum equals: 3.
	self assert: three sum equals: 6.
	self assert: four sum equals: 10