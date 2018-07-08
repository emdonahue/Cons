streaming
consSync
	"do an ifNotEmpty that passes sync to block and store the passed in item as my transducer?"
	
	(transducer := transducer consSync) consAtEnd
		ifTrue: [ transducer := tail consSync.
			tail := self class empty.
			^ transducer ]