element
anySatisfy: aBlock
	self
		do: [ :x | 
			(aBlock value: x)
				ifTrue: [ ^ true ] ].
	^ false