testing
ifEmpty: aBlock
	^ self ifEmpty: aBlock ifNotEmpty: [ :c | c ]