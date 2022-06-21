tests-eager
testAllSatisfy
	self assert: (zero allSatisfy: [ :x | x = 1 ]).
	self assert: (one allSatisfy: [ :x | x = 1 ]).
	self assert: (four allSatisfy: [ :x | x < 5 ]).
	self deny: (four allSatisfy: [ :x | x = 4 ]).
	self assert: ((four select: [ :x | 1 < x ]) allSatisfy: [ :x | 1 < x ]).
	self assert: ((four collect: [ :x | x + 1 ]) allSatisfy: [ :x | 1 < x ])