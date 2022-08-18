element
findT: aBlock
	"Binary tree find, returns a bit flag address into the tree with a 0 bit indicating car and a 1 bit indicating cdr."
	self ifEmpty: [ ^ nil ].
	self car isCons 
		ifTrue: [ (self car findT: aBlock)
			ifNotNil: [ :i | ^ i << 1 ]] "Bit shift address from result in car." 
		ifFalse: [ (aBlock value: self car) ifTrue: [ ^ 	0 ]]. "Found value in car."
			
	self cdr isCons 
		ifTrue: [ (self cdr findT: aBlock)
			ifNotNil: [ :i | ^ i << 1 + 1 ]] "Bit shift address from result in cdr."
		ifFalse: [ (aBlock value: self cdr) ifTrue: [ ^ 1 ]]. "Found value in cdr."
		
	^ nil.