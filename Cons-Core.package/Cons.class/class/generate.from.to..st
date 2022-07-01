generating
generate: aValuable from: aValue to: atEnd

	^ self lazy: aValue cons: [ :pair :value :block | 
		  (atEnd cull: value)
			  ifTrue: [ pair empty ]
			  ifFalse: [ 
				  | v |
				  v := aValuable cull: value.
				  pair car: v cdr: v block: block ] ]