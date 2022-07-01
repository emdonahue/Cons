generating
generate: aValuable from: aValue to: atEnd
	"Generate a list seeded with aValue and continuing until atEnd is true of the current value. Includes the final value."
	^ self lazy: aValue cons: [ :pair :value :block | | curr |
		curr := value value.
	  (atEnd cull: curr)
		  ifTrue: [ pair car: curr cdr: self empty ]
		  ifFalse: [ 
			  pair car: curr cdr: (aValuable cull: curr) block: block ] ].