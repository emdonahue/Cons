list
merge: aCons
	"Merge step of merge sort. Merges two sorted lists."
	^ (aCons cons: self) lazy: [ :next :curr :block |
		curr car ifEmpty: [ next carcdr: curr cdr ] "Other empty, return self."
			ifNotEmpty: [ :b | 
				curr cdr ifEmpty: [ next carcdr: b ] "Self empty, return other."
					ifNotEmpty: [ :a |
						a car < b car ifTrue: [ next car: a car cdr: (b cons: a cdr) block: block ]
							ifFalse: [ next car: b car cdr: (b cdr cons: a) block: block ]]]].