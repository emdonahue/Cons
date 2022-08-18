test
testAtTPut

	self assert: (one atT: (one findT: [ :x | x = 1 ]) put: 2) equals: 2 cons.
	self assert: (pair atT: (pair findT: [ :x | x = 2 ]) put: 3) equals: (1 cons: 3).
	self assert: (four atT: (four findT: [ :x | x = 2 ]) put: 5) equals: #(1 5 3 4) asCons.
	self assert: (four atT: (four findT: [ :x | x = 4 ]) put: 5) equals: #(1 2 3 5) asCons.
	self assert: (#((1 1) ((1 2))) asConsR atT: (#((1 1) ((1 2))) asConsR findT: [ :x | x = 2 ]) put: 3) equals: #((1 1) ((1 3))) asConsR.
	