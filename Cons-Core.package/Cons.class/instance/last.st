element
last
	| beforeFirst last |
	beforeFirst := true.
	last := nil.
	self do: [ :x | last := x.
		beforeFirst := false.
		 ].
	^ beforeFirst ifTrue: [ SubscriptOutOfBounds signal ] ifFalse: last