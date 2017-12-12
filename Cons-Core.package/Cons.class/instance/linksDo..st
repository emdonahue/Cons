linking
linksDo: aBlock
	"List passed to aBlock is guaranteed to be non-lazy for its first element, so #peek, #step and #atEnd can be used within this block."

	| a |
	a := self asReducer.
	[ a consAtEnd ]
		whileFalse: [ aBlock value: a.
			a := a next ].
	^ a