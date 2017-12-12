linking
with: aCons do: aBlock ifProper: endBlock ifNotProper: improperBlock
	"List passed to all blocks guaranteed to be non-lazy for their first elements, so #peek, #step and #atEnd can be used within these blocks.."
	| a b |
	a := self asReducer.
	b := aCons asReducer.
	[ a consAtEnd | b consAtEnd ]
		whileFalse: [ aBlock value: a peek value: b peek.
			a := a next.
			b := b next ].
	a isCons & b isCons
		ifTrue: [ ^ endBlock value: a value: b ].
	^ improperBlock value: a value: b