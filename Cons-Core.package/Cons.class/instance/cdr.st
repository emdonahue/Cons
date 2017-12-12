accessing
cdr
	^ self ifEmpty: [ CollectionIsEmpty signal: self ] ifNotEmpty: [ :c | c step ]