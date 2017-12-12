tests-eager
testPairsDo
	| pairs |
	"Test normal transducers."
	pairs := #().
	assoc pairsDo: [ :a :b | pairs := pairs , {a} , {b} ].
	self assert: pairs equals: #(1 2 3 4).
	"Test pair transducers, with their optimized pairsDo"
	pairs := #().
	(four odds zip: evens) pairsDo: [ :a :b | pairs := pairs , {a} , {b} ].
	self assert: pairs equals: #(1 2 3 4)