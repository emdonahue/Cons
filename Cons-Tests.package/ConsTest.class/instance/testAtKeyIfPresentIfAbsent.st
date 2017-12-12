tests-eager
testAtKeyIfPresentIfAbsent
	self assert: (assoc atKey: 1 ifPresent: [ :v | -1 * v ] ifAbsent: 6) equals: -2.
	self assert: (assoc atKey: 3 ifPresent: [ :v | -1 * v ] ifAbsent: 6) equals: -4.
	self assert: (assoc atKey: 5 ifPresent: [ :v | -1 * v ] ifAbsent: 6) equals: 6.
	self assert: ((assoc select: [ :x | true ]) atKey: 3 ifPresent: [ :v | -1 * v ] ifAbsent: 6) equals: -4