tests-eager
testCdr
	self should: [ zero cdr ] raise: CollectionIsEmpty.
	self assert: four cdr car equals: 2.
	self assert: four cdr cdr car equals: 3.
	self assert: four cdr cdr cdr car equals: 4.
	self should: [ four cdr cdr cdr cdr car ] raise: CollectionIsEmpty.
	