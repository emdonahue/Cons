tests-eager
testDoSeparatedByImproper
	| counter |
	counter := 0.
	improper do: [ :x | counter := counter + x ] separatedBy: [ counter := counter + 5 ] ifNotProper: [ :x | counter := counter + x ].
	self assert: counter equals: 20