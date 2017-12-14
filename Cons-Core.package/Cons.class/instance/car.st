accessing
car
	^ self ifEmpty: [ CollectionIsEmpty signalWith: self ]
	ifNotEmpty: [ :c | c peek ]