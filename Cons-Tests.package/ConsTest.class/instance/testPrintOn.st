tests
testPrintOn
	<todo> "Even after expansion, transducers print lazily as ..."
	| cell |
	cell := #(1 2 3) readStream asCons.
	self assert: (1 cons: 2 cons: 3 cons) asString equals: '(1 2 3)'.
	self assert: Cons empty asString equals: '()'.
	self assert: cell asString equals: '(...)'.
	cell consSync.
	self assert: cell asString equals: '(1 ...)'.
	cell do: [ :x |  ].
	self assert: cell asString equals: '(1 2 3)'.
	self assert: Cons naturals asString equals: '(...)'.
	self assert: pair asString equals: '(1 . 2)'.
	self assert: (three collect: [ :x | x ]) asString equals: '(...)'.
	"self assert: ((three collect: [ :x | x ]) car; yourself) asString equals: '(1 ...)'."
	