linking
ifEmpty: emptyBlock ifNotEmpty: notEmptyBlock
	"List passed to notEmptyBlock is guaranteed to be non-lazy for its first element, so #peek, #step and #atEnd can be used within this block."

	| cons |
	cons := self asReducer.
	cons atEnd
		ifTrue: [ ^ emptyBlock value ].
	^ notEmptyBlock cull: cons