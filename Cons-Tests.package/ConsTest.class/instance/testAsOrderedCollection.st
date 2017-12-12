tests
testAsOrderedCollection
	self assert: zero asOrderedCollection equals: OrderedCollection new.
	self assert: four asOrderedCollection equals:  (OrderedCollection with: 1 with:2 with:3 with: 4)