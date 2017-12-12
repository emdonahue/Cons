*Cons-Core
asCons
	| cons |
	cons := Cons empty.
	self reverseDo: [ :x | cons := cons add: x ].
	^ cons.