element
doLinks: doBlock lazy: lazyBlock
	^ self doLinks: doBlock
		improper: []
		lazy: lazyBlock.