tests-eager
testCar
	self should: [ zero car ] raise: CollectionIsEmpty.
	self assert: four car equals: 1.
	self assert: four car equals: 1.