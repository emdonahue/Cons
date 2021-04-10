comparing
= aCons
	"Uses a special linksEqual helper that does not assume a proper list; improper lists can be = too."

	aCons isCons ifFalse: [ ^ false ].
	^ self
		with: aCons
		do: [ :a :b | 
			a = b
				ifFalse: [ ^ false ] ]
		ifProper: [ :c :d | c consAtEnd & d consAtEnd ]
		ifNotProper: [ :c :d | d = c ]