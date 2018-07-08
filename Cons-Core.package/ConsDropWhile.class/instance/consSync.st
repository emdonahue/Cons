accessing
consSync
	transducer
		do: [ :a :d | 
			(block value: a)
				ifFalse: [ ^ transducer := d ] ].
	^ transducer := self class empty