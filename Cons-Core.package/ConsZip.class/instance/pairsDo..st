enumerating
pairsDo: aBlock
	| a  |
	a := self asReducer.
	[ a consAtEnd ]
		whileFalse: [ aBlock value: a transducer peek value: a list peek.
			a := a next ]