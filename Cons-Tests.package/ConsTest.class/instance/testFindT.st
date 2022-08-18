test
testFindT
	self assert: (zero findT: [ :x | x = 1 ]) equals: nil.
	self assert: (one findT: [ :x | x = 1 ]) equals: 0.
	self assert: (two findT: [ :x | x = 1 ]) equals: 0.
	self assert: (pair findT: [ :x | x = 2 ]) equals: 1. "right"
	self assert: (two findT: [ :x | x = 2 ]) equals: 1. "right left"
	self assert: (four findT: [ :x | x = 3 ]) equals: 3. "right right left"