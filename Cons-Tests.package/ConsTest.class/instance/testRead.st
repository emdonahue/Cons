tests-eager
testRead
	self assert: (Cons read: #(1)) equals: (1 cons).
	self assert: (Cons read: #(1 . 2)) equals: (1 cons: 2).
	self assert: (Cons read: #(1 2)) equals: (1 cons: 2 cons).
	self assert: (Cons read: #(1 (2) . (3))) equals: (1 cons: 2 cons cons: 3 cons).