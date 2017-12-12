syncing
consForce
	^ self ifNotEmpty: [ :s | s peek cons: s step ]