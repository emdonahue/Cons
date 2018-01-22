generating
generate: aValuable until: atEnd
	^ ConsForce new transducer: (ConsGenerator new valuable: aValuable; atEnd: atEnd)