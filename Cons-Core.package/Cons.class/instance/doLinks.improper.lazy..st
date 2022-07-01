element
doLinks: doBlock improper: impBlock lazy: lazyBlock
	self isLazy ifTrue: [ ^ lazyBlock cull: self ].
	self ifNotEmpty: [ 
		doBlock cull: self.
		self cdr isCons 
			ifTrue: [ self cdr doLinks: doBlock improper: impBlock lazy: lazyBlock ]
			ifFalse: [ impBlock cull: self cdr ]].