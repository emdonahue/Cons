eager
atKey: aKey ifPresent: presentBlock ifAbsent: absentBlock
	self
		do: [ :cons | 
			aKey = cons car
				ifTrue: [ ^ presentBlock value: cons cdr ] ].
	^ absentBlock value