lazy
rejectOne: aBlock
	^ ConsRemove new
		transducer: self;
		block: aBlock