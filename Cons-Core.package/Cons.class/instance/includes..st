element
includes: anElement
	self
		do: [ :x | 
			anElement = x
				ifTrue: [ ^ true ] ].
	^ false