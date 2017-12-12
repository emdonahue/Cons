eager
at: anIndex ifAbsent: absentBlock
	^ self at: anIndex ifPresent: [ :v | v ] ifAbsent: absentBlock