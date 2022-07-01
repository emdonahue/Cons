tests-eager
testDetectIfNone
	self assert: (zero detect: [ :x | x = 0 ] ifNone: 6) equals: 6.
	self assert: (zero detect: [ :x | x = 1 ] ifNone: 6) equals: 6.
	self assert: (one detect: [ :x | x = 0 ] ifNone: 6) equals: 6.
	self assert: (one detect: [ :x | x = 1 ] ifNone: 6) equals: 1.
	self assert: (one detect: [ :x | x = 2 ] ifNone: 6) equals: 6.
	self assert: (two detect: [ :x | x = 1 ] ifNone: 6) equals: 1.
	self assert: (two detect: [ :x | x = 2 ] ifNone: 6) equals: 2.
	self assert: (four detect: [ :x | x = 4 ] ifNone: 6) equals: 4.
	self assert: ((four select: [ :x | 1 < x ]) detect: [ :x | x = 1 ] ifNone: 6) equals: 6.
	self assert: ((four select: [ :x | 1 < x ]) detect: [ :x | x = 4 ] ifNone: 6) equals: 4.