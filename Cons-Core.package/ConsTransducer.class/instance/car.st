accessing
car
	self ifEmpty: [ CollectionIsEmpty signalWith: self ].
	^ car