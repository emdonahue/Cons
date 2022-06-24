list
append: aCons
	^ self lazy: [ :p :l :b |
		l ifEmpty: [ 
				aCons ifEmpty: [ p empty ] 
					ifNotEmpty: [ p car: aCons car cdr: aCons cdr ]]
			ifNotEmpty: [ p car: l car cdr: l cdr block: b ]].