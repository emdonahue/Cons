laziness
transducer
	self isLazy ifTrue: [ ^ ConsTransducer new cdr: car transducer; block: cdr ].