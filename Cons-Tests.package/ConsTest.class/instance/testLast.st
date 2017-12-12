tests-eager
testLast
	self should: [ zero last ] raise: SubscriptOutOfBounds.
	self assert: one last equals: 1.
	self assert: four last equals: 4.
	self reset.
	self assert: (four select: [ :x | x < 4 ]) last equals: 3.
self reset.	self assert: (four collect: [ :x | x + 1 ]) last equals: 5