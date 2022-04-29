tests
testAsSet
	self assert: zero asSet equals: Set new.
	self assert: four asSet equals:  (Set with: 1 with:2 with:3 with: 4)