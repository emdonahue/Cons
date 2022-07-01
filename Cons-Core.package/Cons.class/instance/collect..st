list
collect: aBlock
		^ self lazy: [ :pair :list :block | 
			list ifEmpty: [ pair empty ]
				ifNotEmpty: [ pair car: (aBlock value: list car) cdr: list cdr block: block ]].