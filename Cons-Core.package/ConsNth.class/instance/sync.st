streaming
sync
	synced ifTrue: [ ^ self ].
	synced := true.
	transducer
		linksDoWithIndex: [ :t :i | 
			i = n
				ifTrue: [ transducer := t.
					^ self ] ].
	^ transducer := self class empty