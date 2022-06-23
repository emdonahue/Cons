laziness
linksDo: aBlock
	| list |
	list := ABBench a: [ self ] b: [ self transducer ].
	[ list isCons ] whileTrue: [
		list ifEmpty: [ ^ self class	 empty ]
			ifNotEmpty: [ 
				aBlock value: list.	
				list := list cdr. ]
	].
	^ list. "Return tail if improper."
	"self ifNotEmpty: [
		aBlock value: self.
		self cdr isCons ifTrue: [ self cdr linksDo: aBlock ]
			ifFalse: [ aBlock value: self cdr ]]."