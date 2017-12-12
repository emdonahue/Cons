tests-eager
testInjectInto
	self assert: (zero inject: 0 into: [  ]) equals: 0.
	self assert: (four inject: 5 into: [ :x :y | x + y ]) equals: 15.