tests-lazy
testDropWhile
	self assert: (four dropWhile: [ :x | true ]) equals: zero.
	self reset.
	self assert: (four dropWhile: [ :x | false ]) equals: fourCopy.
	self reset.
	self assert: (four dropWhile: [ :x | x < 3 ]) equals: threeFour.
	self reset.
	self assert: (four dropWhile: [ :x | x odd ]) equals: (threeFour add: 2).
	