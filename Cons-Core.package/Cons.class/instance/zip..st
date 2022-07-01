list
zip: aCons
	^ (aCons cons: self) lazy: [ :pair :list :block |
		list cdr ifEmpty: [ pair empty ]
			ifNotEmpty: [ :rest | 
				list car ifEmpty: [ pair empty ]
					ifNotEmpty: [ pair car: (rest car cons: list caar) 
						cdr: (list cdar cons: rest cdr)
						block: block ] ]
	].