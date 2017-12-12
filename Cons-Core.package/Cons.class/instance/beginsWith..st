eager
beginsWith: aPrefix
	^ self
		with: aPrefix
		do: [ :a :b | 
			a = b
				ifFalse: [ ^ false ] ]
		ifProper: [ :a :b | b consAtEnd ]
		ifNotProper: [ :a :b | b consAtEnd ]