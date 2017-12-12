tests-eager
testDoImproper
	| count |
	count := 0.
	improper do: [ :x | count := count + x ] ifNotProper: [ :x | count := count + x ].
	self assert: count equals: 10