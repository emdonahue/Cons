list
collectR: aBlock
	"Recursive collect."
	^ self collect: [ :x | 
		x isCons ifTrue: [ x collectR: aBlock ]
			ifFalse: [ aBlock cull: x ]].