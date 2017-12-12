linking
ifEmpty: emptyBlock ifNotEmpty: notEmptyBlock
	"List passed to notEmptyBlock is guaranteed to be non-lazy for its first element, so #peek, #step and #atEnd can be used within this block."

	| synced |
	synced := self asReducer.
	synced atEnd
		ifTrue: [ ^ emptyBlock value ].
	^ notEmptyBlock cull: synced