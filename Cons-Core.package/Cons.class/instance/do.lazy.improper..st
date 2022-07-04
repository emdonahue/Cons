laziness
do: aBlock lazy: lazyBlock improper: improperBlock
	| tail |
	tail := self doLazy: aBlock.
	tail isCons ifFalse: [ ^ improperBlock cull: tail ].
	tail isLazy ifTrue: [ ^ lazyBlock cull: tail ].