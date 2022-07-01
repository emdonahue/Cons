list
nth: n
	^ self lazy: [ :pair :list :block | 
		pair carcdr: (list drop: n-1) block: block].