list
reverse
	^ self inject: Cons empty into: [ :r :e | r add: e ].