element
size
	| size |
	size :=0.
	self linksDo: [ :x | size := size + 1 ].
	^ size