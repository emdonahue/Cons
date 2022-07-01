tests-eager
testAccessors
	self assert: four first equals: 1.
	self assert: four second equals: 2.
	self assert: four third equals: 3.
	self assert: four fourth equals: 4.
	self assert: (four allButFirst allButFirst) equals: threeFour.