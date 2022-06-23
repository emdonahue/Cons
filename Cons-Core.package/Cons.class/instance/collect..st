list
collect: aBlock
	"ABBench a: [
	^ self lazy: [ :p :s |
		s ifEmpty: [ p empty ]
			ifNotEmpty: [ p car: (aBlock value: s car); cdr: (s cdr collect: aBlock)]]. 
		] b: ["
		^ self lazy: [ :pair :list :block | 
			list ifEmpty: [ pair empty ]
				ifNotEmpty: [ pair car: (aBlock value: list car) cdr: list cdr block: block ].
			]
	"]"