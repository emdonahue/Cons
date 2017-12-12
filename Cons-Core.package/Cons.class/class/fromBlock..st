generating
fromBlock: aBlock
	^ ConsForce new transducer: (ConsGenerator new valuable: aBlock)