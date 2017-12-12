eager
linksDoWithIndex: aBlock
	| i |
	i := 0.
	self linksDo: [ :d | aBlock value: d value: (i := i + 1) ]