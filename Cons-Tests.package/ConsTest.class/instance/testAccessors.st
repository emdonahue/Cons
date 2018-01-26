tests-eager
testAccessors
	self assert: four first equals: 1.
	self reset.
	self assert: four second equals: 2.
	self reset.
	self assert: four third equals: 3.
	self reset.
	self assert: four fourth equals: 4.
	self reset.
	self assert: (four allButFirst allButFirst) equals: threeFour