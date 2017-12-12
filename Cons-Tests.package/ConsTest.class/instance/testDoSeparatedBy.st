tests-eager
testDoSeparatedBy
	| counter separatedCounter |
	counter := 0.
	separatedCounter := 0.
	four do: [ :x | counter := counter + x ] separatedBy: [ separatedCounter := separatedCounter + 1 ].
	self assert: counter equals: 10.
	self assert: separatedCounter equals: 3.
	self reset.
	counter := 0.
	separatedCounter := 0.
	(four select: [ :x | 1 < x and: x < 4 ]) do: [ :x | counter := counter + x ] separatedBy: [ separatedCounter := separatedCounter + 1 ].
	self assert: counter equals: 5.
	self assert: separatedCounter equals: 1