tests-testing
testIsEmpty
	self assert: zero isEmpty.
	self deny: one isEmpty.
	self deny: pair isEmpty.
	self deny: four isEmpty