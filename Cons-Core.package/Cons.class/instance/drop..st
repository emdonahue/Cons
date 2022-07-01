list
drop: aNumber
	^ self lazy: [ :p :l :b | | i |
		i := aNumber.
		l detectLinks: [ :k | i := i - 1. i < 0 ]
			ifFound: [ :k | p carcdr: k ]
			ifNone: [ p empty ]].