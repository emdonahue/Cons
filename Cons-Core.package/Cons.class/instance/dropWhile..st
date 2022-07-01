list
dropWhile: aBlock
	^ self lazy: [ :p :l :b |
		l detectLinks: [ :e | (aBlock value: e) not ]
			ifFound: [ :k | p carcdr: k ]
			ifNone: [ p empty ]].