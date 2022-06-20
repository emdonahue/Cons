list
removeDuplicates
	| duplicates |
	duplicates := Set new.
	^ self
		reject: [ :x | 
			(duplicates includes: x) ifTrue: true
				ifFalse: [ duplicates add: x.
					false ] ]