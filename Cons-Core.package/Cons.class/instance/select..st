list
select: aBlock
	^ self lazy: [ :p :l :b |
			l detectLinks: aBlock
				ifFound: [ :k | p car: k car cdr: k cdr block: b ]
				ifNone: [ p empty ]].