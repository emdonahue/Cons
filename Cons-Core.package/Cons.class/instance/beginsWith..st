element
beginsWith: aPrefix
	| pfx |
	pfx := aPrefix.
	self do: [ :e | 
		pfx ifEmpty: [ ^ true ].
		e = pfx car ifTrue: [ pfx := pfx cdr ]
			ifFalse: [ ^ false ]].
	^ pfx isEmpty.