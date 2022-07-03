tests-eager
testValueWithArguments
	self assert: ([:x :y :z | x + y + z] valueWithArguments: three) equals: 6.