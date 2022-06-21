linking
linksDo: aBlock
	| list |
	list := self.
	[ list isCons ] whileTrue: [
		list ifEmpty: [ ^ Cons empty ]
			ifNotEmpty: [ 
				aBlock value: list.
				list := list cdr. ]
	].
	^ list. "Return tail if improper."
	"self ifNotEmpty: [
		aBlock value: self.
		self cdr isCons ifTrue: [ self cdr linksDo: aBlock ]
			ifFalse: [ aBlock value: self cdr ]]."