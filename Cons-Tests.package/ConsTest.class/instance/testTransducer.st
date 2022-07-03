tests-transducer
testTransducer
	self assert: zero identicalTo: zero transducer.
	self assert: four identicalTo: four transducer.
	self deny: four identicalTo: (four collect: [ :x | x ]) transducer.
	self assert: ((four collect: [ :x | x ]) transducer isKindOf: ConsTransducer).
	self assert: (((four collect: [ :x | x ]) collect: [ :x | x ]) transducer unsafeCdr isKindOf: ConsTransducer).
	self assert: ((four collect: [ :x | x ]) collect: [ :x | x ]) transducer unsafeCdr unsafeCdr identicalTo: four.
	self assert: ((four collect: [ :x | x ]) transducer cdr isKindOf: ConsTransducer).
	self assert: (three collect: [ :x | x ]) transducer car equals: 1.
	self assert: (three collect: [ :x | x ]) transducer cdr car equals: 2.
	self assert: (three collect: [ :x | x ]) transducer cdr cdr car equals: 3.
	self assert: (three collect: [ :x | x ]) transducer cdr cdr cdr isEmpty.
	self assert: ((three collect: [ :x | x ]) do: [ :x | ]; yourself) unsafeCdr isBlock. "A lazy pair should produce a transducer and not force itself when enumerated."
	self assert: ((three collect: [ :x | x ]) forceOne do: [ :x | ]; yourself) unsafeCdr unsafeCdr isBlock. "An eager pair should still allow a lazy tail to remain unforced."
	self assert: ((three collect: [ :x | x ]) forced do: [ :x | ]; yourself) unsafeCdr unsafeCdr isPair. "A forced pair forces as it goes."
	self assert: (1 cons: []) cdr isBlock. "Ensure that internal representation blocks are separate from external blocks."
		self assert: (((four collect: [:x|x]) forceOne collect: [:x|x]) sum; yourself) unsafeCar unsafeCdr isLazy.