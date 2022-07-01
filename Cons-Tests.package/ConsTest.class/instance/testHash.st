tests-eager
testHash
	self deny: zero hash equals: one hash.
	self deny: one hash equals: two hash.
	self assert: four hash equals: fourCopy hash.
	self assert: (four select: [:x | false]) hash equals: zero hash.
	self assert: pair hash equals: pair hash.
	self deny: pair hash equals: assoc hash.