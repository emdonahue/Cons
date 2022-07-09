tests-lazy
testCollectR
	self assert: (zero collectR: [ :x | x + 1 ]) equals: zero.
	self assert: (four collectR: [ :x | x + 1 ]) equals: #(2 3 4 5) asCons.
	self assert: (#(1 (2) ((3 4))) asConsR collectR: [ :x | x + 1 ]) equals: #(2 (3) ((4 5))) asConsR.