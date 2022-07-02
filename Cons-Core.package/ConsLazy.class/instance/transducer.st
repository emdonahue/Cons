laziness
transducer
	self isLazy ifTrue: [ 
		^ ConsTransducer new cdr: 
			(self isGenerator ifTrue: car ifFalse: [ car transducer ]); 
			block: cdr ].