initialization
setUp
	super setUp.
	four := ((four select: [ :x | true ]) collect: [ :x | x ]) unsafe