accessing
cdr
	^ self ifEmpty: [ CollectionIsEmpty signalWith: self ] ifNotEmpty: [ :c | c step ]