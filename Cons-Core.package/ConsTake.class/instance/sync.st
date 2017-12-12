streaming
sync
	number < 1
		ifTrue: [ ^ transducer := self class empty ].
		^ super sync