element
detectLinks: detectBlock ifFound: foundBlock ifNone: noneBlock
	self linksDo: [ :x | 
		(detectBlock cull: x car)
			ifTrue: [ ^ foundBlock cull: x ] ].
	^ noneBlock value.