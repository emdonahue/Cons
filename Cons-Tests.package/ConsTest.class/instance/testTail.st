tests-eager
testTail
	self assert: zero tail equals: zero.
	self assert: four tail equals: zero.
	self assert: pair tail equals: 2.
	self assert: improper tail equals: 4