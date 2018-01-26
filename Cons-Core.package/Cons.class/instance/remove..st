lazy
remove: anElement
	^ self rejectOne: [ :x | x = anElement ]