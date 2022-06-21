element
reduce: aBlock
	^ self ifEmpty: [ SubscriptOutOfBounds signal ] 
		ifNotEmpty: [ self cdr inject: self car into: aBlock ]