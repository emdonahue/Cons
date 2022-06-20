testing
ifEmpty: emptyBlock ifNotEmpty: aBlock
	^ self isEmpty 
		ifTrue: [ emptyBlock isBlock ifTrue: [ emptyBlock cull: self class empty ] ifFalse: emptyBlock ] 
		ifFalse: [ aBlock isBlock ifTrue: [ aBlock cull: self ] ifFalse: aBlock ].