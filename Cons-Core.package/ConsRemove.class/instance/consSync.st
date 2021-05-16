subclassresponsibility
consSync
	transducer := transducer
	ifEmpty: [ transducer := self class empty. 
		^ absentBlock value. ]
	ifNotEmpty: [ :t | 
		(block value: t peek)
			ifTrue: [ ^ t next ]
			ifFalse: t ]