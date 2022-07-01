element
doLazy: aBlock
	self isLazy ifTrue: [ ^ self ].
	^ self ifNotEmpty: [ 
		aBlock cull: self car.
		self cdr isCons 
			ifTrue: [ self cdr doLazy: aBlock ]
			ifFalse: [ self cdr ]].