tests-eager
testDetectIfFound
	self should: [ zero detect: [ :x | x = 0 ] ifFound: [ :x | -1 * x ] ] raise: NotFound.
	self should: [ zero detect: [ :x | x = 1 ] ifFound: [ :x | -1 * x ] ] raise: NotFound.
	self should: [ one detect: [ :x | x = 0 ] ifFound: [ :x | -1 * x ] ] raise: NotFound.
	self assert: (one detect: [ :x | x = 1 ] ifFound: [ :x | -1 * x ]) equals: -1.
	self should: [ one detect: [ :x | x = 2 ] ifFound: [ :x | -1 * x ] ] raise: NotFound.
	self assert: (two detect: [ :x | x = 1 ] ifFound: [ :x | -1 * x ]) equals: -1.
	self assert: (two detect: [ :x | x = 2 ] ifFound: [ :x | -1 * x ]) equals: -2.
	self assert: (four detect: [ :x | x = 4 ] ifFound: [ :x | -1 * x ]) equals: -4.
	self reset.
	self should: [ (four select: [ :x | 1 < x ]) detect: [ :x | x = 1 ] ifFound: [ :x | -1 * x ] ] raise: NotFound.
	self reset.
	self assert: ((four select: [ :x | 1 < x ]) detect: [ :x | x = 4 ] ifFound: [ :x | -1 * x ]) equals: -4