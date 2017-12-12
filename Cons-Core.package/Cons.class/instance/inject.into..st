eager
inject: initVal into: aBlock
	| accum |
	accum := initVal.
	self do: [ :x | accum := aBlock value: accum value: x ].
	^ accum