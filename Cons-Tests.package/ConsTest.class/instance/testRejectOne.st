tests-lazy
testRejectOne
	self assert: (zero rejectOne: [ :x | true ]) equals: zero.
	self assert: (one rejectOne: [ :x | x = 1 ]) equals: zero.
	self assert: (two rejectOne: [ :x | x = 2 ]) equals: one.
	self assert: (four rejectOne: [ :x | x = 4 ]) equals: three.
	self assert: ((four rejectOne: [ :x | x = 2 ]) rejectOne: [ :x | x = 4 ]) equals: odds