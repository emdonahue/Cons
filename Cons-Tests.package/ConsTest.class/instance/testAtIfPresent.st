tests-eager
testAtIfPresent
	self should: [ zero at: 0 ifPresent: [ :x | -1 * x ] ] raise: SubscriptOutOfBounds.
	self should: [ zero at: 1 ifPresent: [ :x | -1 * x ] ] raise: SubscriptOutOfBounds.
	self should: [ one at: 0 ifPresent: [ :x | -1 * x ] ] raise: SubscriptOutOfBounds.
	self assert: (one at: 1 ifPresent: [ :x | -1 * x ]) equals: -1.
	self should: [ one at: 2 ifPresent: [ :x | -1 * x ] ] raise: SubscriptOutOfBounds.
	self assert: (two at: 1 ifPresent: [ :x | -1 * x ]) equals: -1.
	self assert: (two at: 2 ifPresent: [ :x | -1 * x ]) equals: -2.
	self assert: (four at: 4 ifPresent: [ :x | -1 * x ]) equals: -4.
	self
		should: [ (four select: [ :x | 1 < x ]) at: 4 ifPresent: [ :x | -1 * x ] ]
		raise: SubscriptOutOfBounds.
	self assert: ((four select: [ :x | 1 < x ]) at: 3 ifPresent: [ :x | -1 * x ]) equals: -4.
	self
		assert: ((four collect: [ :x | x + 1 ]) at: 4 ifPresent: [ :x | -1 * x ])
		equals: -5.