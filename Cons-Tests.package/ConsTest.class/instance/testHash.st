tests-eager
testHash
	self deny: zero hash = one hash.
	self deny: one hash = two hash.
	self assert: four hash equals: fourCopy hash.
	self reset.
	self assert: (four select: [:x | false]) hash equals: zero hash.
	self assert: pair hash equals: pair hash.
	self deny: pair hash = assoc hash