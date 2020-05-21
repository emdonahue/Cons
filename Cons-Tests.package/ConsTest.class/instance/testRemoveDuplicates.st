tests-eager
testRemoveDuplicates
	self assert: zero removeDuplicates equals: zero.
	self assert: four removeDuplicates equals: (1 cons: 2 cons: 3 cons: 4 cons).
	self assert: (1 cons: 1 cons) removeDuplicates equals: one.
	self assert: (1 cons: 1 cons: 1 cons) removeDuplicates equals: one