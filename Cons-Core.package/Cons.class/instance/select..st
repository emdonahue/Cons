list
select: aBlock
	^ self lazy: [ :p |
		self ifEmpty: [ p empty ]
			ifNotEmpty: [ 
				self detectLinks: aBlock
					ifFound: [ :l | p car: l car; cdr: (l cdr select: aBlock) ]
					ifNone: [ p empty ]]].