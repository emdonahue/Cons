generating
generate: aValuable from: aValue upTo: atEnd
	"Generate a list seeded with aValue and continuing until atEnd is true of the current value. Do not include the final value."
	^ self lazy: aValue cons: [ :pair :value :block | | curr |
		curr := value value.
	  (atEnd cull: curr)
		  ifTrue: [ pair empty ]
		  ifFalse: [ 
			  pair car: curr cdr: (aValuable cull: curr) block: block ] ].