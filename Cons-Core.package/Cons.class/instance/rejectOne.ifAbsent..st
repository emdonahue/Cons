list
rejectOne: aBlock ifAbsent: absentBlock
	^ ConsRemove new
		transducer: self;
		block: aBlock;
		absentBlock: absentBlock.