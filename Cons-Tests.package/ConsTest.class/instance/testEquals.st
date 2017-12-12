tests-eager
testEquals
	self assert: four equals: fourCopy.
	self reset.
	self assert: four equals: fourCopy.
	self reset.
	self deny: Cons empty = four.
	self reset.
	self deny: four = Cons empty.
	self reset.
	self deny: four = three.
	self deny: three = four.
	self deny: odds = two.
	self deny: two = odds.
	self assert: Cons empty equals: Cons empty.
	self assert: pair equals: pair.
	self assert: (pair add: 3) equals: (pair add: 3)