tests
testAsConsTree
	self assert: #(1 #(2)) asConsTree equals: (1 cons: 2 cons cons).
	self assert: '123' asConsTree equals: '123'. "Although a sequence, we probably want to treat strings as primitive."