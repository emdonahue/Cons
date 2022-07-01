instance creation
car: a cdr: b
	b isBlock ifTrue: [ ^ ConsPair new car: a; cdr: b ]. "Internal representations use block in cdr, so need to special case if it is an external value."
	^ ConsLazy new car: a; cdr: b