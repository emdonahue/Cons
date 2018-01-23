streaming
sync
	synced
		ifTrue: [ ^ self ].
	atEnd value
		ifTrue: [ ^ Cons empty ].
	peek := valuable value.
	synced := true
