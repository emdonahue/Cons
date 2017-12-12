tests-eager
testDoWithIndex
	| state |
	state := 0.
	zero doWithIndex: [ :x :i | state = 1 ].
	self assert: state equals: 0.
	four
		doWithIndex: [ :x :i | 
			self assert: x equals: i.
			state := state + x + i ].
	self assert: state equals: 20.
	self reset.
	state := 0.
	(four select: [ :x | 1 < x ])
		doWithIndex: [ :x :i | 
			self assert: x equals: i + 1.
			state := state + x + i ].
	self assert: state equals: 15