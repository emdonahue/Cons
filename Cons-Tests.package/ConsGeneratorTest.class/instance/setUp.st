initialization
setUp
	super setUp.
	generating := 0.
	four := (Cons generate: [ generating := generating + 1 ] until: [ generating = 5 ]) transducer