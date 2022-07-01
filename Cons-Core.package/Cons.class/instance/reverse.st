list
reverse
	^ self lazy: [ :pair :list :block | 
		pair carcdr: (self inject: Cons empty into: [ :r :e | r add: e ])].