laziness
linksDo: aBlock
	| list |
	list := self.
	[ list isCons ] whileTrue: [
		list isCons ifTrue: [ list := list transducer ].
		list ifEmpty: [ ^ self class empty ]
			ifNotEmpty: [ 
				aBlock value: list.	
				list := list cdr.]].
	^ list. "Return tail if improper."