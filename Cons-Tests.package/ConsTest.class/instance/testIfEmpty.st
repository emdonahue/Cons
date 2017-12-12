tests-testing
testIfEmpty
	self assert: (zero ifEmpty: true) .
	self assert: (one ifEmpty: true) equals: one.
	self assert: (pair ifEmpty: true) equals: pair.
	self assert: (four ifEmpty: true) equals: fourCopy.
	self reset.
	
	self assert: ((four select: [:x | false]) ifEmpty: true).