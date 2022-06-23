list
append: aCons
	^ self lazy: [ :p :l :b |
		l ifEmpty: [ p car: aCons car cdr: aCons cdr ]
			ifNotEmpty: [ p car: l car cdr: l cdr block: b ]].