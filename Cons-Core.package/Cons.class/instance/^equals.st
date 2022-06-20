comparing
= aCons
	self == aCons ifTrue: [ ^ true ].
	aCons isCons ifFalse: [ ^ false ].
	self isNotEmpty & aCons isNotEmpty ifTrue: [
		^ self car = aCons car and: [ self cdr = aCons cdr ]].
	^ self isEmpty & aCons isEmpty.