tests
testConsForce
	| fourced |
	self assert: zero forceOne equals: zero.
	self assert: pair forceOne == pair.
	fourced := four forceOne.
	self assert: fourced class equals: ConsLazy.
	self assert: fourced car equals: 1.
	
	fourced := fourced cdr.
	self assert: fourced class equals: ConsLazy.
	self assert: fourced car equals: 2.
	fourced := fourced cdr.
	self assert: fourced class equals: ConsLazy.
	self assert: fourced car equals: 3.
	fourced := fourced cdr.
	self assert: fourced class equals: ConsLazy.
	self assert: fourced car equals: 4.
	fourced := fourced cdr.
	self assert: fourced class equals: ConsEmpty