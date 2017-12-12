tests-lazy
testRemove
	self assert: (zero remove: [ :x | true ]) equals: zero.
	self assert: (one remove: [ :x | x = 1 ]) equals: zero.
	self assert: (two remove: [ :x | x = 2 ]) equals: one.
	self assert: (four remove: [ :x | x = 4 ]) equals: three.
	self reset.
	self assert: ((four remove: [ :x | x = 2 ]) remove: [ :x | x = 4 ]) equals: odds