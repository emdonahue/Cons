enumerating
pairsDo: aBlock
	| a  |
	a := self asReducer.
	[ a atEnd ]
		whileFalse: [ aBlock value: a transducer peek value: a list peek.
			a := a next ]