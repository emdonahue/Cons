list
select: aBlock
	"ABBench a: [
	^ self lazy: [ :p |
		self ifEmpty: [ p empty ]
			ifNotEmpty: [ 
				self detectLinks: aBlock
					ifFound: [ :l | p car: l car; cdr: (l cdr select: aBlock) ]
					ifNone: [ p empty ]]].
			] b: ["
			^ self lazy: [ :p :l :b |
					l detectLinks: aBlock
						ifFound: [ :k | p car: k car cdr: k cdr block: b ]
						ifNone: [ p empty ]].
				"]"