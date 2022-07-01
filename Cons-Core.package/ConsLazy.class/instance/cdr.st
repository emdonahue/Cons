accessing
cdr
	self ifEmpty: [ CollectionIsEmpty signalWith: self ].
	^ cdr.