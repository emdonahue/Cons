element
doLinks: doBlock lazy: lazyBlock
	self isLazy ifTrue: [ ^ lazyBlock cull: self ].
	self ifNotEmpty: [ 
		doBlock cull: self.
		self cdr isCons 
			ifTrue: [ self cdr doLinks: doBlock lazy: lazyBlock ]
			ifFalse: [ doBlock cull: self cdr ]].