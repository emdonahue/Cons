generating
fromStream: aStream
	^ ConsForce new transducer: (ConsTransducer new stream: aStream)