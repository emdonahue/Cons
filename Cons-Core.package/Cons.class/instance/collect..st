lazy
collect: aBlock
	^ ConsCollect new
		transducer: self;
		block: aBlock