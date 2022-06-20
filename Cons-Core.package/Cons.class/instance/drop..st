list
drop: aNumber
	^ ConsDrop new
		transducer: self;
		number: aNumber