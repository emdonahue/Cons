list
collect: aBlock
	ABBench a: [
	^ self lazy: [ :p :s |
		s ifEmpty: [ p empty ]
			ifNotEmpty: [ p car: (aBlock value: s car); cdr: (s cdr collect: aBlock)]]. 
		] b: [
		^ self lazy: [ :p :s | 
			p car: (aBlock value: s car). s cdr 
			]
	]