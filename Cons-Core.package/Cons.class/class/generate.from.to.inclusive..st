generating
generate: aValuable from: aValue to: atEnd inclusive: isInclusive
	"Generate a list seeded with aValue and continuing until atEnd is true of the current value.."
	^ self lazy: aValue cons: [ :pair :value :block | | curr |
		curr := value value.
		curr isCons ifTrue: [ curr := curr asCons ]. "Lists used as atomic values should not transduce."
	  (atEnd cull: curr)
		  ifTrue: [ isInclusive ifTrue: [ pair car: curr cdr: self empty ] ifFalse: [ pair empty ]]
		  ifFalse: [ 
			  pair car: curr cdr: (aValuable cull: curr) block: block ] ].