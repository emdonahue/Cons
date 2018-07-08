streaming
consSync
	^ transducer
		ifNotEmpty: [ :t | 
			transducer := t.
			(block value: t peek)
				ifFalse: [ ^ transducer := self class empty ]. self ]