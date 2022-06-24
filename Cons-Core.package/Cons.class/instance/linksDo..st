laziness
linksDo: aBlock
	| list |
	list := self transducer.
	[ list isCons ] whileTrue: [
		list ifEmpty: [ ^ self class empty ]
			ifNotEmpty: [ 
				aBlock value: list.	
				list := list cdr. ]]. "Don't transduce cdr so if head is a pair we reify the whole list. Gives us some flexibility about transducing vs reifying the list to memoize values."
	^ list. "Return tail if improper."
	"self ifNotEmpty: [
		aBlock value: self.
		self cdr isCons ifTrue: [ self cdr linksDo: aBlock ]
			ifFalse: [ aBlock value: self cdr ]]."