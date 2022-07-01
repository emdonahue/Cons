tests-eager
testAnySatisfy
	self deny: (zero anySatisfy: [ :x | x = 1 ]).
	self assert: (one anySatisfy: [ :x | x = 1 ]).
	self assert: (four anySatisfy: [ :x | x = 4 ]).
	self deny: (four anySatisfy: [ :x | x = 6 ]).
	self assert: ((four select: [ :x | 1 < x ]) anySatisfy: [ :x | x = 2 ]).
	self deny: ((four collect: [ :x | x + 1 ]) anySatisfy: [ :x | x = 1 ]).