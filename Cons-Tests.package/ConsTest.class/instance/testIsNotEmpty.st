tests-testing
testIsNotEmpty
	self deny: zero isNotEmpty.
	self assert: one isNotEmpty.
	self assert: pair isNotEmpty.
	self assert: four isNotEmpty.