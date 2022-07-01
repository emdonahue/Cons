tests
testAsConsTree
	self assert: #(1 #(2)) asConsR equals: (1 cons: 2 cons cons).
	self assert: '123' asConsR equals: '123'. "Although a sequence, we probably want to treat strings as primitive."