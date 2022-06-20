element
detect: detectBlock ifFound: foundBlock ifNone: noneBlock
	self
		do: [ :x | 
			(detectBlock value: x)
				ifTrue: [ ^ foundBlock value: x ] ].
	^ noneBlock value