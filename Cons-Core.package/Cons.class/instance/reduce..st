element
reduce: aBlock
	| first accumulator |
	first := true.
	self do: [ :x | first ifTrue: [ accumulator := x. first := false. ]
		ifFalse: [ accumulator := aBlock value: accumulator value: x ]].
	first ifTrue: [ CollectionIsEmpty signalWith: self ].
	^ accumulator.