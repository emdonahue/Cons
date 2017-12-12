tests-lazy
testZip
	self assert: (four zip: zero) equals: zero.
	self reset.
	self assert: (zero zip: four) equals: zero.
	self reset.
	self assert: (four zip: two) car equals: (Cons car: 1 cdr: 1).
	self reset.
	self assert: (four zip: two) cdr car equals: (Cons car: 2 cdr:2 ).
	self reset.
	self assert: (four zip: two) cdr cdr  equals: zero