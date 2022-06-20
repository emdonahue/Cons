list
collectWithIndex: aBlock
	^ ConsCollectWithIndex new
		transducer: self;
		block: aBlock