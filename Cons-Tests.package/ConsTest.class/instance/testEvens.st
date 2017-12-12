tests-lazy
testEvens
	self assert: zero evens equals: zero.
	self assert: one evens equals: zero.
	self assert: two evens equals: (Cons with: 2).
	self assert: four evens equals: evens