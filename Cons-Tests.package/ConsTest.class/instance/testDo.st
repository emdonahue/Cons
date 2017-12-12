tests-eager
testDo
	| sum |
	sum := {}.
	four do: [ :x | sum := sum , {x} ].
	self assert: sum equals: #(1 2 3 4)