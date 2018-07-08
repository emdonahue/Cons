streaming
consSync
	number < 1
		ifTrue: [ ^ transducer := self class empty ].
		^ super consSync