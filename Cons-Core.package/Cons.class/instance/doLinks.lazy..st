element
doLinks: doBlock lazy: lazyBlock
	self isLazy ifTrue: [ lazyBlock cull: self ] 
		ifFalse: [ doBlock cull: self. 
			self ifNotEmpty: [ self cdr doLinks: doBlock lazy: lazyBlock ]].