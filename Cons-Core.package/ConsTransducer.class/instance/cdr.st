accessing
cdr
	self ifEmpty: [ CollectionIsEmpty signalWith: self ].
	car := self.