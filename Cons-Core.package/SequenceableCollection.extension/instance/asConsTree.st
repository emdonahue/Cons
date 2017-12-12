*Cons-Core
asConsTree
	| head |
	head := Cons empty.
	self reverseDo: [ :x | head := head add: x asConsTree ].
	^ head