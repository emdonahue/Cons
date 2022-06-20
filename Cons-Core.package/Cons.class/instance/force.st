laziness
force
	^ self consForce ifNotEmpty: [ :p | p cdr force ].