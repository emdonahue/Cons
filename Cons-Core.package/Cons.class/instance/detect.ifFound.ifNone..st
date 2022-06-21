element
detect: detectBlock ifFound: foundBlock ifNone: noneBlock
	self do: [ :x | 
		(detectBlock cull: x)
			ifTrue: [ ^ foundBlock cull: x ] ].
	^ noneBlock value.