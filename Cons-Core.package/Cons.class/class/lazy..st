as yet unclassified
lazy: aBlock
	| p |
	p := ConsPair new car: aBlock.
	p cdr: p.
	^ p.