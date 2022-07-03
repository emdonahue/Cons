list
sort
	^ self lazy: [ :next :curr :block |
		curr ifEmpty: [ next empty ]
			ifNotEmpty: [ :fst | 
				fst cdr ifEmpty: [ next carcdr: curr ]
					ifNotEmpty: [ :snd |
						snd cdr ifEmpty: [ 
							fst car < snd car ifTrue: [ next carcdr: fst ]
								ifFalse: [ next car: snd car cdr: fst car cons ]]
							ifNotEmpty: [ :rest |
								next carcdr: (curr odds sort merge: curr evens sort)
								 ]]]].