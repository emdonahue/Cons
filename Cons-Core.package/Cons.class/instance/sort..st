list
sort: aBlock
	^ self lazy: [ :next :curr :block |
		curr ifEmpty: [ next empty ]
			ifNotEmpty: [ :fst | 
				fst cdr ifEmpty: [ next carcdr: curr ]
					ifNotEmpty: [ :snd |
						snd cdr ifEmpty: [ 
							(aBlock value: fst car value: snd car) ifTrue: [ next carcdr: fst ]
								ifFalse: [ next car: snd car cdr: fst car cons ]]
							ifNotEmpty: [ :rest |
								next carcdr: ((curr odds sort: aBlock) merge: (curr evens sort: aBlock) block: aBlock)
								 ]]]].