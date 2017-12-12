tests-eager
testAt
	self should: [ zero at: 0 ] raise: SubscriptOutOfBounds.
	self should: [ zero at: 1 ] raise: SubscriptOutOfBounds.
	self should: [ one at: 0 ] raise: SubscriptOutOfBounds.
	self assert: (one at: 1) equals: 1.
	self should: [ one at: 2 ] raise: SubscriptOutOfBounds.
	self assert: (two at: 1) equals: 1.
	self assert: (two at: 2) equals: 2.
	self assert: (four at: 4) equals: 4.
	self reset.
	self should: [ (four select: [ :x | 1 < x ]) at: 4 ] raise: SubscriptOutOfBounds.
		self reset.
	self assert: ((four select: [ :x | 1 < x ]) at: 3) equals: 4.
		self reset.
	self assert: ((four collect: [ :x | x + 1 ]) at: 4) equals: 5