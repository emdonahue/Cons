tests-eager
testAtKey
	self assert: (assoc atKey: 1) equals: 2.
	self assert: (assoc atKey: 3) equals: 4.
	self should: [ assoc atKey: 5 ] raise: KeyNotFound