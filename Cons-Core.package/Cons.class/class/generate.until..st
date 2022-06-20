generating
generate: aValuable until: atEnd
	^ self lazy: [ :p |
			atEnd value ifTrue: [ p empty ]
				ifFalse: [ p car: aValuable value; cdr: (self generate: aValuable until: atEnd) ]].