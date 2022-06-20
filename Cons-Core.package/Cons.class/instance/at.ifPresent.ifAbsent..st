element
at: anIndex  ifPresent: presentBlock ifAbsent: absentBlock
	self
		inject: anIndex
		into: [ :i :x |  
			i = 1
				ifTrue: [ ^ presentBlock value: x ].
			i - 1 ].
	^ absentBlock value