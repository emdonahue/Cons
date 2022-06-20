tests
testPrintOn
	| cell |
	cell := #(1 2 3) asCons collect: [ :x | x ].
	self assert: (1 cons: 2 cons: 3 cons) asString equals: '(1 2 3)'.
	self assert: Cons empty asString equals: '()'.
	self assert: cell asString equals: '(...)'.
	cell consForce.
	self assert: cell asString equals: '(1 ...)'.
	cell force.
	self assert: cell asString equals: '(1 2 3)'.
"	self assert: Cons naturals asString equals: '(...)'."
	self assert: pair asString equals: '(1 . 2)'.
	self assert: (three collect: [ :x | x ]) asString equals: '(...)'.