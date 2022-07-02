laziness
linksDo: aBlock
	| list |
	list := self.
	[ list isCons ] whileTrue: [
		list isCons ifTrue: [ list := list transducer ].
		list ifEmpty: [ ^ self class empty ]
			ifNotEmpty: [ 
				aBlock value: list.	
				list := list cdr.]]. "Don't transduce cdr so if head is a pair we reify the whole list. Gives us some flexibility about transducing vs reifying the list to memoize values."
	^ list. "Return tail if improper."