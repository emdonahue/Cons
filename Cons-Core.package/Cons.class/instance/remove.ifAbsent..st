lazy
remove: anElement ifAbsent: absentBlock
	^ self rejectOne: [ :x | x = anElement ] ifAbsent: absentBlock.