eager
atKey: aKey ifAbsent: absentBlock
	^ self atKey: aKey ifPresent: [ :v | v ] ifAbsent: absentBlock