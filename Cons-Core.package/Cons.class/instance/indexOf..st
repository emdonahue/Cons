eager
indexOf: anElement
	self
		doWithIndex: [ :x :i | 
			anElement = x
				ifTrue: [ ^ i ] ].
	^ 0