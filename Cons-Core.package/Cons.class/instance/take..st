list
take: aNumber
	^ (aNumber cons: self) lazy: [ :pair :list :block | 
		list cdr ifEmpty: [ pair empty ]
			ifNotEmpty: [ :tail | list car <= 0 ifTrue: [ pair empty ]
				ifFalse: [ pair car: tail car cdr: (list car - 1 cons: tail cdr) block: block ]]].