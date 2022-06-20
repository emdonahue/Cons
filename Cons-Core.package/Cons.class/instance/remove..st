list
remove: anElement
	^ self rejectOne: [ :x | x = anElement ]