initialization
setUp
	super setUp.
	generating := 0.
	four := (Cons generate: [ generating ] until: [ (generating := generating + 1) = 5 ]) unsafe