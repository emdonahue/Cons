streaming
sync
	"do an ifNotEmpty that passes sync to block and store the passed in item as my transducer?"
	
	(transducer := transducer sync) consAtEnd
		ifTrue: [ transducer := tail sync.
			tail := self class empty.
			^ transducer ]