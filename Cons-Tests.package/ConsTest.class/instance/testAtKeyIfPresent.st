tests-eager
testAtKeyIfPresent
	self assert: (assoc atKey: 1 ifPresent: [ :v | -1 * v ]) equals: -2.
	self assert: (assoc atKey: 3 ifPresent: [ :v | -1 * v ]) equals: -4.
	self should: [ assoc atKey: 5 ifPresent: [ :v | -1 * v ] ] raise: KeyNotFound