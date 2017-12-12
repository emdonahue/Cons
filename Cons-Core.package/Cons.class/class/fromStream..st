generating
fromStream: aStream
	^ ConsForce new transducer: (ConsStream new stream: aStream)