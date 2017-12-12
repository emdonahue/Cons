tests-lazy
testTakeWhile
	self assert: (four takeWhile: [ :x | false ]) equals: zero.
	self reset.
	self assert: (four takeWhile: [ :x | true ]) equals: fourCopy.
	self reset.
	self assert: (four takeWhile: [ :x | x < 3 ]) equals: two.
	self reset.
	self assert: ((four takeWhile: [ :x | x < 4 ]) takeWhile: [:x | x < 3]) equals: two.	