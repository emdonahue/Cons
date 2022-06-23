laziness
force
	| list |
	list := self.
	[ list isCons and: [ list isNotEmpty ] ] whileTrue: [ list := list cdr ].
	^ self ifEmpty: Cons empty.