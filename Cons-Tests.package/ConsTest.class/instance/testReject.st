tests-lazy
testReject
	| rejected |
	self assert: (zero reject: [ :x | false ]) equals: zero.
	self assert: (four reject: [ :x | false ]) equals: fourCopy.
	self assert: (four reject: [ :x | true ]) equals: zero.
	self assert: (four reject: [ :x | x even ]) equals: odds.
	self assert: (four reject: [ :x | x >= 4 ]) equals: three.
	self assert: ((four reject: [ :x | x >= 4 ]) reject: [ :x | x >= 4 ]) equals: three.