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