streaming
consSync
	synced
		ifTrue: [ ^ self ].
	atEnd value
		ifTrue: [ ^ self class empty ].
	peek := valuable value.
	synced := true
