list
rejectOne: aBlock ifAbsent: absentBlock
	^ self lazy: [ :pair :list :block | 
		list ifEmpty: [ pair empty. absentBlock value ]
			ifNotEmpty: [ (aBlock value: list car) 
				ifTrue: [ pair carcdr: list cdr ]
				ifFalse: [ pair carcdr: list block: block ]]].