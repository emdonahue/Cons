streaming
sync
	transducer
		do: [ :a :d | 
			(block value: a)
				ifTrue: [ transducer := d.
					^ self ] ].
	^ transducer := self class empty