accessing
cdr
	self ifEmpty: [ CollectionIsEmpty signalWith: self ].
	self isEager ifTrue: [ ^ cdr ].
	car := self.