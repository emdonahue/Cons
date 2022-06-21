laziness
force
	self linksDo: [ :e | ].
	^ self ifEmpty: Cons empty.