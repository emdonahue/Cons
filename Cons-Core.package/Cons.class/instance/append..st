list
append: aCons
	^ self lazy: [ :p :l :b |
		l ifEmpty: [ p carcdr: aCons ]
			ifNotEmpty: [ p car: l car cdr: l cdr block: b ]].