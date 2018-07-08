streaming
consSync
	| tail |
	reversed
		ifTrue: [ ^ transducer ].
	reversed := true.
	tail := self class empty.
	transducer do: [ :x | tail := tail add: x ].
	^ transducer := tail