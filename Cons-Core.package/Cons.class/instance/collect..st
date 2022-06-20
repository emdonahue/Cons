list
collect: aBlock
	^ self lazy: [ :p |
		self ifEmpty: [ p empty ]
			ifNotEmpty: [ p car: (aBlock value: self car); cdr: (self cdr collect: aBlock)]].