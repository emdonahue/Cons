element
do: doBlock lazy: lazyBlock
	self doLinks: [ :p | p ifNotEmpty: [ doBlock value: p car ]] lazy: lazyBlock.