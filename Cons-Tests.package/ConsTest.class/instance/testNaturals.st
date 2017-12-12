tests-infinite
testNaturals
	| nats |
	nats := Cons naturals.
	self assert: nats car equals: 1.
	self assert: nats car equals: 1.
	self assert: nats cdr car equals: 2.
	self assert: nats cdr cdr car equals: 3.
	