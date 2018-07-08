initialization
setUp
	super setUp.
	four := (((1 cons: 2 cons: 3 cons: (4 cons: 5)) select: [ :x | true ]) ) unsafe.