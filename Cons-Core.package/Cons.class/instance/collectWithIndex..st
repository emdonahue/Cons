list
collectWithIndex: aBlock
	^ (1 cons: self) lazy: [ :pair :list :block | 
		list cdr ifEmpty: [ pair empty ]
			ifNotEmpty: [ :tail | pair car: (aBlock value: tail car value: list car) 
				cdr: (list car + 1 cons: tail cdr) block: block ]].