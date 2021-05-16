lazy
rejectOne: aBlock
	^ self rejectOne: aBlock ifAbsent: self.