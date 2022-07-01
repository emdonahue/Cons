list
takeWhile: aBlock
	^ self lazy: [ :pair :list :block | 
		list ifEmpty: [ pair empty ]
			ifNotEmpty: [ (aBlock value: list car) 
				ifTrue: [ pair carcdr: list block: block ]
				ifFalse: [ pair empty ]]].