tests-lazy
testZip
	self assert: (four zip: zero) equals: zero.
	self assert: (zero zip: four) equals: zero.
	self assert: (four zip: two) car equals: (Cons car: 1 cdr: 1).
	self assert: (four zip: two) cdr car equals: (Cons car: 2 cdr:2 ).
	self assert: (four zip: two) cdr cdr  equals: zero.