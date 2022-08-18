test
testAtT
	self assert: (four atT: (four findT: [ :x | x = 1 ])) equals: 1.
	self assert: (four atT: (four findT: [ :x | x = 2 ])) equals: 2.
	self assert: (four atT: (four findT: [ :x | x = 3 ])) equals: 3.
	self assert: (four atT: (four findT: [ :x | x = 4 ])) equals: 4.
	self assert: (pair atT: (pair findT: [ :x | x = 2 ])) equals: 2.
	self assert: (#((1 1) ((1 2))) asConsR atT: (#((1 1) ((1 2))) asConsR findT: [ :x | x = 2 ])) equals: 2.