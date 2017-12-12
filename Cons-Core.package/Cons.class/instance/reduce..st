eager
reduce: aBlock
	| a |
	^ self ifEmpty: [ SubscriptOutOfBounds signal ] ifNotEmpty: [ :s | a :=  s peek. s step inject: a into: aBlock  ]