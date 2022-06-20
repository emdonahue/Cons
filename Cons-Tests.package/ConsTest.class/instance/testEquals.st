tests-eager
testEquals
	self assert: four equals: four.
	self assert: four equals: fourCopy.
	self deny: Cons empty equals: four.
	self deny: four equals: Cons empty.
	self deny: four equals: three.
	self deny: three equals: four.
	self deny: odds equals: two.
	self deny: two equals: odds.
	self assert: Cons empty equals: Cons empty.
	self assert: pair equals: pair.
	self assert: (pair add: 3) equals: (pair add: 3)