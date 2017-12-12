tests-eager
testBeginsWith
	self assert: (zero beginsWith: zero).
	self assert: (one beginsWith: one).
	self assert: (four beginsWith: four).
	self reset.
	self assert: (four beginsWith: two).
	self reset.
	self assert: (one beginsWith: zero).
	self deny: (one beginsWith: two).
	self deny: (threeFour beginsWith: one).
	self assert: ((four select: [ :x | x < 4 ]) beginsWith: two).
	self reset.
	self deny: ((four select: [ :x | x < 2 ]) beginsWith: two).
	self reset.
	self assert: ((four collect: [ :x | x ]) beginsWith: two)