tests-eager
testDetect
	self should: [ zero detect: [ :x | x = 0 ] ] raise: NotFound.
	self should: [ zero detect: [ :x | x = 1 ] ] raise: NotFound.
	self should: [ one detect: [ :x | x = 0 ] ] raise: NotFound.
	self assert: (one detect: [ :x | x = 1 ]) equals: 1.
	self should: [ one detect: [ :x | x = 2 ] ] raise: NotFound.
	self assert: (two detect: [ :x | x = 1 ]) equals: 1.
	self assert: (two detect: [ :x | x = 2 ]) equals: 2.
	self assert: (four detect: [ :x | x = 4 ]) equals: 4.
	self reset.
	self should: [ (four select: [ :x | 1 < x ]) detect: [ :x | x = 1 ] ] raise: NotFound.
	self reset. self assert: ((four select: [ :x | 1 < x ]) detect: [ :x | x = 4 ]) equals: 4