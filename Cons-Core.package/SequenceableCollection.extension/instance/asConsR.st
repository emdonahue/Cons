*Cons-Core
asConsR
	| head |
	head := Cons empty.
	self reverseDo: [ :x | head := head add: x asConsR ].
	^ head