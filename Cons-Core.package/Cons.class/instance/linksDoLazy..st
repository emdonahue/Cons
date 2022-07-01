element
linksDoLazy: aBlock
	self isLazy ifTrue: [ ^ self ].
	self ifNotEmpty: [ 
		aBlock cull: self car.
		self cdr isCons 
			ifTrue: [ self cdr linksDoLazy: aBlock ]
			ifFalse: [ ^ self cdr ]].