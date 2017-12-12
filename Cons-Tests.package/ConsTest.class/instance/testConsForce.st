tests
testConsForce
	| fourced |
	self assert: zero consForce equals: zero.
	self assert: pair consForce == pair.
	fourced := four consForce.
	self assert: fourced class equals: ConsPair.
	self assert: fourced car equals: 1.
	
	fourced := fourced cdr.
	self assert: fourced class equals: ConsPair.
	self assert: fourced car equals: 2.
	fourced := fourced cdr.
	self assert: fourced class equals: ConsPair.
	self assert: fourced car equals: 3.
	fourced := fourced cdr.
	self assert: fourced class equals: ConsPair.
	self assert: fourced car equals: 4.
	fourced := fourced cdr.
	self assert: fourced class equals: ConsEmpty