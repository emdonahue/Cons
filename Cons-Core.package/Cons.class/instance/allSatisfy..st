element
allSatisfy: aBlock
	self
		do: [ :x | 
			(aBlock value: x)
				ifFalse: [ ^ false ] ].
	^ true