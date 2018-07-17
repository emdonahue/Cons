tests-lazy
testReject
	| rejected |
	self assert: (zero reject: [ :x | false ]) equals: zero.
	self assert: (four reject: [ :x | false ]) equals: fourCopy.
	self reset.
	self assert: (four reject: [ :x | true ]) equals: zero.
	self reset.
	self assert: (four reject: [ :x | x even ]) equals: odds.
	self reset.
	rejected := four reject: [ :x | x >= 4 ].
	self assert: rejected equals: three.
	self reset.
	self assert: rejected equals: three.	"Test that transducers copy themselves before consumption so that they are idempotent."
	self reset.
	rejected := (four reject: [ :x | x >= 4 ]) reject: [ :x | x >= 4 ].
	self assert: rejected equals: three.
	self reset.
	self assert: rejected equals: three.