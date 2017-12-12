accessing
car
	^ self ifEmpty: [ CollectionIsEmpty signal: self ]
	ifNotEmpty: [ :c | c peek ]