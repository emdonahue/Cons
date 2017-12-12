*Cons-Core
asCons
	| cons |
	cons := Cons empty.
	self do: [ :x | cons := cons add: x. ].
	^ cons