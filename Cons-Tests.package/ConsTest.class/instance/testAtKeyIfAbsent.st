tests-eager
testAtKeyIfAbsent
	self assert: (assoc atKey: 1 ifAbsent: 6) equals: 2.
	self assert: (assoc atKey: 3 ifAbsent: 6) equals: 4.
	self assert: (assoc atKey: 5 ifAbsent: 6) equals: 6